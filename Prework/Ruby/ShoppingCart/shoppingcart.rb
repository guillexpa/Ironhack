class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
      @items.push(item)
  end

  def checkout
    total_price = 0
    @items.each do |item|
     total_price += item.price
    end
    puts "Your total today is #{total_price}. Have a nice day!"

  end

  def price
    if @items.length > 5
      total_price*=0.9
    end
  end

end


class Item
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
    @price = @price
  end
end

class Houseware < Item
  def price
      if @price > 100
        @price*=0.95
        @price
      end
  end
end

class Fruit < Item
  def price
      now = Time.now
      if now.saturday? || now.sunday?
        @price*=0.9
      end
  end
end


banana = Fruit.new("Banana", 10)
ojuice = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

awesome_cart = ShoppingCart.new

awesome_cart.add_item(rice)
awesome_cart.add_item(rice)
awesome_cart.add_item(rice)
awesome_cart.add_item(rice)
awesome_cart.add_item(rice)
awesome_cart.add_item(rice)
awesome_cart.add_item(rice)



awesome_cart.checkout
