module Tookan
  module Configuration
    VALID_OPTIONS_KEYS = [
      :connection_options,
      :endpoint,
      :default_body
    ].freeze

    # By default, don't set any connection options
    DEFAULT_CONNECTION_OPTIONS = {}

    DEFAULT_BODY = { api_key: ENV['TOOKAN_API_KEY'] }

    # The endpoint that will be used to connect if none is set
    #
    # @note There is no reason to use any other endpoint at this time
    DEFAULT_ENDPOINT = "https://api.tookanapp.com/v2".freeze

    attr_accessor *VALID_OPTIONS_KEYS

    # When this module is extended, set all configuration options to their default values
    def self.extended(base)
      base.reset
    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
    end

    # Create a hash of options and their values
    def options
      VALID_OPTIONS_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

    # Reset all configuration options to defaults
    def reset
      self.connection_options = DEFAULT_CONNECTION_OPTIONS
      self.endpoint           = DEFAULT_ENDPOINT
      self.default_body       = DEFAULT_BODY
    end
  end
end