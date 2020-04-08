class Bear

    attr_accessor :name, :type
  
    def initialize(name, type)
      @name = name
      @type = type
      @stomach = []
    end 

    def name()
        return @name
    end 

    def type()
        return @type
    end 
    
    def fish_in_stomach()
        return @stomach.count
    end 
    
    def eat_fish(fish)
         @stomach.push(fish)
    end 





    
    def eats_fish_river(delish_fish)
        for fish in @river
            eat_fish(delish_fish)
        end 
        @river.clear()
    end 


    # def pick_up_from_stop(stop)
    #     for person in stop.queue()
    #       pick_up(person)
    #     end
    #     stop.clear_queue()
    #   end
    

end 
