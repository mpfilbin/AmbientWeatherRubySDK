require_relative '../test_helper'
require 'ambient-weather-sdk/v1/resources/device'

module AmbientWeatherSDK
  module V1
    module Resources
      describe Device do
        subject { Device.new('00:a3:50:b3:f0', 'My Device', 'Home') }

        it('has a MAC address') { subject.mac_address.wont_be_nil }

        it('has a name') { subject.name.wont_be_nil }

        it('has a location') { subject.location.wont_be_nil }
      end
    end
  end
end

