class Event

  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map {|truck| truck.name}
  end

  def food_trucks_that_sell(item)
    trucks_that_sell = []
    @food_trucks.each do |truck|
      trucks_that_sell << truck if truck.inventory.include?(item)
    end
    trucks_that_sell
  end

  def total_inventory
    ###Not cool bro, jk
  end
end
