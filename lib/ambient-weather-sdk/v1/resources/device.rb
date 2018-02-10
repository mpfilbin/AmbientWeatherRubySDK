module AmbientWeatherSDK
  module V1
    module Resources
      # Device represents a personal weather station
      class Device
        attr_reader :mac_address,
                    :name,
                    :location

        def initialize(mac_address, name, location)
          @mac_address = mac_address
          @name = name
          @location = location
          @readings = []
        end

      end
    end
  end
end

