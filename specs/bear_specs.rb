require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')

class   BearTest < MiniTest::Test

    def setup ()
        @bear = Bear.new("Baloo", "Gentle")
        @fish1 = Fish.new("nemo")
        @fish2 = Fish.new("plastic")
        @fish3 = Fish.new("jules")
        @fish4 = Fish.new("una")
        @fish5 = Fish.new("kia")
        @fish6 = Fish.new("bob")

    end 

    def test_name()
        assert_equal("Baloo", @bear.name())
    end

    def test_type()
        assert_equal("Gentle", @bear.type())
    end

    def test_fish_in_stomach()
        assert_equal(0, @bear.fish_in_stomach())
    end 

    def test_eat_fish()
        @bear.eat_fish(@fish1)
        assert_equal(1, @bear.fish_in_stomach())
    end 

    def test_eat_multiple_fish()
        @bear.eat_fish(@fish2)
        @bear.eat_fish(@fish3)
        @bear.eat_fish(@fish4)
        assert_equal(3, @bear.fish_in_stomach())
    end 

    def test_bear_eats_fish_from_river()
        @bear.eats_from_river(@river)
        assert_equal(2, @bear.fish_in_stomach)
        assert_equal(4, @river.count_fish)
    end 


end 