require 'singleton'
require 'active_support'
require 'logger'
require 'timeout'

require 'circuitbox/version'
require 'circuitbox/memcache_store'
require 'circuitbox/railtie' if defined?(Rails)  
require 'circuitbox/circuit_breaker'
require 'circuitbox/notifier'

require 'circuitbox/errors/error'
require 'circuitbox/errors/open_circuit_error'
require 'circuitbox/errors/service_failure_error'

class Circuitbox
  attr_accessor :circuits, :circuit_store, :stat_store
  cattr_accessor :configure

  def self.instance
    @@instance ||= new
  end

  def initialize
    self.instance_eval(&@@configure) if @@configure
  end

  def self.configure(&block)
    @@configure = block if block
  end

  def self.reset
    @@instance = nil
    @@configure = nil
  end

  def self.circuit_store
    self.instance.circuit_store ||= ActiveSupport::Cache::MemoryStore.new
  end

  def self.circuit_store=(store)
    self.instance.circuit_store = store
  end

  def self.stat_store
    self.instance.stat_store
  end

  def self.stat_store=(store)
    self.instance.stat_store = store
  end

  def self.[](service_identifier, options = {})
    self.circuit(service_identifier, options)
  end

  def self.circuit(service_identifier, options = {})
    service_name = self.parameter_to_service_name(service_identifier)

    self.instance.circuits ||= Hash.new
    self.instance.circuits[service_name] ||= CircuitBreaker.new(service_name, options)

    if block_given?
      self.instance.circuits[service_name].run { yield }
    else
      self.instance.circuits[service_name]
    end
  end

  def self.parameter_to_service_name(param)
    uri = URI(param.to_s)
    uri.host.present? ? uri.host : param.to_s
  end
end
