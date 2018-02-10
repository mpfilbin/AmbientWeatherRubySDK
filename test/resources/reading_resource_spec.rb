require_relative '../test_helper'
require 'ambient-weather-sdk/v1/resources/reading'



module AmbientWeatherSDK::V1::Resources

  describe Reading do
    describe 'parsing from json' do
      payload = File.read(File.join(__dir__, '../fixtures/device_info.json'))
      subject { Reading.parse(payload) }

      it('has a wind speed value') { subject.wind_speed.wont_be_nil }
    end

  end

end
