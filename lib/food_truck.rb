class FoodTruck

  attr_reader :name, :inventory, :item_stock
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
    @item_stock = Hash.new(0)
  end

  def check_stock(item)
    @item_stock[item]
  end

  def stock(item, quantity)
    @inventory[item] += quantity
    @item_stock[item] += quantity
  end

  def potential_revenue
    potential_revenue = 0
    @item_stock.each do |item, value|
      potential_revenue += item.price.gsub(/[^\d\.]/, '').to_f * value
    end
    potential_revenue
  end

end
