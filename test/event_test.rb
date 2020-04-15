require 'minitest/autorun'
require 'minitest/pride'
require "./lib/item"
require "./lib/food_truck"
require "./lib/event"


class EventTest < Minitest::Test

  def setup
    @event = Event.new("South Pearl Street Farmers Market")
  end

  def test_it_exists
    assert_instance_of Event, @event
  end

  def test_it_has_readable_attributes
    assert_equal "South Pearl Street Farmers Market", @event.name
  end


end


# ## Iteration 2 - Event and FoodTrucks
#
# A FoodTruck will be able to calculate their `potential_revenue` -
# the sum of all their items' price * quantity.
#
# A Event is responsible for keeping track of FoodTrucks.
# It should have a method called `food_truck_names` that returns an array of all the FoodTruck's names.
#
# Additionally, the Event should have a method called `food_trucks_that_sell` that takes
# an argument of an item represented as a String. It will return a list of FoodTrucks that
# have that item in stock.
#
# Use TDD to create a `Event` class that responds to the following interaction pattern:
#
# ```ruby
# require './lib/item'
# #=> true
#
# require './lib/food_truck'
# #=> true
#
# require './lib/event'
# #=> true
#
# event = Event.new("South Pearl Street Farmers Market")
# #=> #<Event:0x00007fe134933e20...>
#
# event.name
# #=> "South Pearl Street Farmers Market"
#
# event.food_trucks
# #=> []
#
# food_truck1 = FoodTruck.new("Rocky Mountain Pies")
# #=> #<FoodTruck:0x00007fe1348a1160...>
#
# item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
# #=> #<Item:0x007f9c56740d48...>
#
# item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
# #=> #<Item:0x007f9c565c0ce8...>
#
# item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
# #=> #<Item:0x007f9c562a5f18...>
#
# item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
# #=> #<Item:0x007f9c56343038...>
#
# food_truck1.stock(item1, 35)
#
# food_truck1.stock(item2, 7)
#
# food_truck2 = FoodTruck.new("Ba-Nom-a-Nom")
# #=> #<FoodTruck:0x00007fe1349bed40...>
#
# food_truck2.stock(item4, 50)
#
# food_truck2.stock(item3, 25)
#
# food_truck3 = FoodTruck.new("Palisade Peach Shack")
# #=> #<FoodTruck:0x00007fe134910650...>
#
# food_truck3.stock(item1, 65)
#
# event.add_food_truck(food_truck1)
#
# event.add_food_truck(food_truck2)
#
# event.add_food_truck(food_truck3)
#
# event.food_trucks
# #=> [#<FoodTruck:0x00007fe1348a1160...>, #<FoodTruck:0x00007fe1349bed40...>, #<FoodTruck:0x00007fe134910650...>]
#
# event.food_truck_names
# #=> ["Rocky Mountain Pies", "Ba-Nom-a-Nom", "Palisade Peach Shack"]
#
# event.food_trucks_that_sell(item1)
# #=> [#<FoodTruck:0x00007fe1348a1160...>, #<FoodTruck:0x00007fe134910650...>]
#
# event.food_trucks_that_sell(item4)
# #=> [#<FoodTruck:0x00007fe1349bed40...>]
#
# food_truck1.potential_revenue
# #=> 148.75
#
# food_truck2.potential_revenue
# #=> 345.00
#
# food_truck3.potential_revenue
# #=> 243.75
