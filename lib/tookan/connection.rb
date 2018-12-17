require "faraday"

module Tookan
  module Connection
    private

    def connection
      options = { headers: { "Accept" => "application/json",
                             "Content-Type" => "application/json" },
                  url: endpoint }.merge(connection_options)

      Faraday::Connection.new(options)
    end
  end
end