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

end 