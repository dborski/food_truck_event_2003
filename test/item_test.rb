require 'minitest/autorun'
require 'minitest/pride'
require "./lib/item"


class ItemTest < Minitest::Test

  def setup
    @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
  end

  def test_it_exists

    assert_instance_of Item, @item1
  end

  def test_it_has_readable_attributes

    assert_equal 'Peach Pie (Slice)', @item1.name
    assert_equal "$3.75", @item1.price
  end


end


  # ## Iteration 1 - Items & FoodTrucks
  #
  # The Event will need to keep track of its FoodTrucks and their Items.
  # Each FoodTruck will be able to report its total inventory, stock items,
  # and return the quantity of items. Any item not in stock should return `0` by default.
  #
  # Use TDD to create a `FoodTruck` class that responds to the following interaction pattern:

  #
  #food_truck = FoodTruck.new("Rocky Mountain Pies")
  # #=> #<FoodTruck:0x00007f85683152f0...>
  #
  #food_truck.name
  # #=> "Rocky Mountain Pies"
  #
  #food_truck.inventory
  # #=> {}
  #
  #food_truck.check_stock(item1)
  # #=> 0
  #
  #food_truck.stock(item1, 30)
  #
  #food_truck.inventory
  # #=> {#<Item:0x007f9c56740d48...> => 30}
  #
  #food_truck.check_stock(item1)
  # #=> 30
  #
  #food_truck.stock(item1, 25)
  #
  #food_truck.check_stock(item1)
  # #=> 55
  #
  #food_truck.stock(item2, 12)
  #
  #food_truck.inventory
  # #=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
  # ```
