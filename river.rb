class River

    attr_accessor :name, :fish
  
    def initialize(name, fish)
      @name = name
      @fish = fish
    end 

    def name()
        return @name
    end 

    def check_fish()
        return @fish
    end 

    def count_fish()
        return @fish.count()
    end 

    def lose_fish(fish)
        @fish.delete(fish)
    end 


end 