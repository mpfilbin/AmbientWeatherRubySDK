require_relative '../test_helper'
require 'ambient-weather-sdk/v1/resources/reading'


module AmbientWeatherSDK
  module V1
    module Resources
      describe Reading do
        describe 'parsing from json' do
          payload = File.read(File.join(__dir__, '../fixtures/device_info.json'))
          subject { Reading.parse(payload) }

          it('has an instantaneous wind speed value') do
            subject.windspeedmph.wont_be_nil
          end

          it('has an instantaneous wind direction value') do
            subject.winddir.wont_be_nil
          end

          it('has a max wind speed in the last 10 minutes value') do
            subject.windgustmph.wont_be_nil
          end

          it('has a daily maximum speed value') do
            subject.maxdailygust.wont_be_nil
          end

          it('has a wind direction at which the wind gust occurred value') do
            subject.windgustdir.wont_be_nil
          end

          it('has an average wind direction value') do
            subject.winddir_avg2m.wont_be_nil
          end

          it('has an average wind speed, 2 minute average value') do
            subject.windspdmph_avg2m.wont_be_nil
          end

          it('has an average wind direction, 10 minute average value') do
            subject.winddir_avg10m.wont_be_nil
          end

          it('has an Average wind speed, 10 minute average value') do
            subject.windspdmph_avg10m.wont_be_nil
          end

          it('has an outdoor temperature value') do
            subject.tempf.wont_be_nil
          end

          it('has an outdoor humidity value') do
            subject.humidity.wont_be_nil
          end

          it('has a relative pressure value') do
            subject.baromrelin.wont_be_nil
          end

          it('has a absolute pressure value') do
            subject.baromabsin.wont_be_nil
          end

          it('has a indoor temperature value') do
            subject.tempinf.wont_be_nil
          end

          it('has a indoor humidity value') do
            subject.humidityin.wont_be_nil
          end

          it('has an hourly rain rate value') do
            subject.hourlyrainin.wont_be_nil
          end

          it('has a daily rain value') do
            subject.dailyrainin.wont_be_nil
          end

          it('has a monthly rain value') do
            subject.monthlyrainin.wont_be_nil
          end

          it('has a yearly rain value') do
            subject.yearlyrainin.wont_be_nil
          end

          it('has a "feels like" value') do
            subject.feelsLike.wont_be_nil
          end

          it('has a dew point value') do
            subject.dewPoint.wont_be_nil
          end

          it('has a date value') do
            subject.date.wont_be_nil
          end

          it('has a date in milliseconds from the Unix epoch value') do
            subject.dateutc.wont_be_nil
          end

        end
      end
    end
  end
end
