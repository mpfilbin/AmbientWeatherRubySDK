require 'json'

module AmbientWeatherSDK
  module V1
    module Resources
      # A Reading is a collection of information recorded from a Device
      class Reading

        attr_reader :winddir, :windspeedmph, :windgustmph, :maxdailygust,
                    :windgustdir, :winddir_avg2m, :windspdmph_avg2m,
                    :winddir_avg10m, :windspdmph_avg10m, :tempf, :humidity,
                    :baromrelin, :baromabsin, :tempinf, :humidityin,
                    :hourlyrainin, :dailyrainin, :monthlyrainin, :yearlyrainin,
                    :feelsLike, :dewPoint, :date, :dateutc

        private_class_method :new

        class << self
          def parse(payload)
            json = JSON.parse(payload, symbolize_names: true)
            new(json.first.fetch(:lastData, nil)) unless json.empty?
          end
        end

        def initialize(json_payload = {})
          json_payload.each do |key, value|
            instance_variable_set("@#{key}", value)
          end
        end

      end
    end
  end
end

