
module AmbientWeatherSDK
  module V1
    URI = 'https://api.ambientweather.net/v1/'.freeze

    class Client
      def initialize(api_key:, application_key:)
        @api_key = api_key
        @application_key = application_key
      end

      def devices

      end

      private

      def issue_request
      end
    end
  end
end
