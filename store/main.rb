require_relative 'item'
require_relative 'food.rb'


item1 = Item.new(name: "Peanut Butter", brand: "Skippy", price: 3, size: "160z")
p item1
p item1.print_info
@brand = "jiffy"
p @brand

food = Food.new
food.shelf_life 