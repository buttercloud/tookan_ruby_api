module Tookan
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{ |f| require f }

    include Tookan::Client::All
  end
end