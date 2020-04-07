require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')
require_relative('../bear')

class FishTest < MiniTest::Test

    def setup()
        @fish = Fish.new("Jeremy")
    end 

    def test_name()
        assert_equal("Jeremy", @fish.name())
    end 

end 