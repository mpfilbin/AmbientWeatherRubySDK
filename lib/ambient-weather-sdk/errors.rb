module AmbientWeatherSDK
  module Errors

    class RequestError < StandardError
      def initialize(message = 'There was an error issue a request to the Ambient Weather API')
        super
      end
    end

  end
end