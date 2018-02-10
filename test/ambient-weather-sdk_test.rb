require_relative "test_helper"

class AmbientWeatherSDKTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::AmbientWeatherSDK::VERSION
  end

end
