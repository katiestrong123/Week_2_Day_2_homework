require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')
require_relative('../bear')

class RiverTest < MiniTest::Test

    def setup ()
        @river = River.new("Moody Blue", ["Bob", "Pop", "Nemo", "Bill", "Rob", "Jaws"])
    end

    def test_name()
        assert_equal("Moody Blue", @river.name())
    end 
       
    def test_check_fish()
        assert_equal(["Bob", "Pop", "Nemo", "Bill", "Rob", "Jaws"], @river.fish())
    end 

end 