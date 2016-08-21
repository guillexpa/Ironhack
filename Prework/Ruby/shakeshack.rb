class ShakeShop
  def initialize
    @name = "The Most Awesome Shake Shop Ever"
    @milkshake = [ ]
  end

  def add_milkshakes(milkshake)
    @milkshake.push(milkshake)
  end

  def check_out_milkshakes
    @milkshake.each do |milkshake|
      puts milkshake.name
      puts "Price: #{milkshake.price_of_milkshake}"
      puts "----------------------------------------"
    end

  end

end


class MilkShake
  attr_reader :name
  def initialize (name)
    @name = name
    @base_price = 3
    @ingredients = [ ]
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  total_price_of_milkshake = @base_price
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
    end
     total_price_of_milkshake
   end

end


class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end


my_shop = ShakeShop.new
nizars_milkshake = MilkShake.new("Nizars Milkshake")
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

my_shop.add_milkshakes(nizars_milkshake)
my_shop.check_out_milkshakes
