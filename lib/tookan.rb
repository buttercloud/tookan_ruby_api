require 'tookan/version'
require 'dotenv/load'
require 'tookan/configuration'
require 'tookan/error'
require 'tookan/api'
require 'tookan/client'
require 'tookan/globals'

module Tookan
  extend Configuration

  def self.client(options={})
    Tookan::Client.new(options)
  end

  # Delegate to Tookan::Client
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  # Delegate to Tookan::Client
  def self.respond_to?(method, include_all=false)
    return client.respond_to?(method, include_all) || super
  end
end
