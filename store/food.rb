module Grocery 
  class Food < Item
    def initialize(input_options) 
      super
      @food = input_options[:item]
    end

    def shelf_life
      @food = true  
    end
  end
end  