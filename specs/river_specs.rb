require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')
require_relative('../bear')

class RiverTest < MiniTest::Test

    def setup ()
        @river = River.new("Moody Blue", ["Bob", "Pop", "Bill", "Rob", "Jaws", "Nemo"])
    end

    def test_name()
        assert_equal("Moody Blue", @river.name())
    end 
       
    def test_check_fish()
        assert_equal("Bob", "Pop", "Bill", "Rob", "Jaws", "Nemo"())
    end 

    def test_count_fish()
        assert_equal(6, @river.count_fish())
    end
    
    def test_lose_fish()
        @river.lose_fish(@Nemo)
        assert_equal(5, @river.count_fish)
    end



#  A river should lose a fish when a bear takes a fish


end 