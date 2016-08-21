require 'pry'
class ShoppingCart
  def initialize
    @list = {}
    @items = {
              :apple => [0, {:spring => 10,:summer => 10,:autumn => 15,:winter => 12}],
              :orange => [0, {:spring => 5,:summer => 2,:autumn => 5,:winter => 5}],
              :grapes => [0, {:spring => 15,:summer => 15,:autumn => 15,:winter => 15}],
              :banana => [0, {:spring => 20,:summer => 20,:autumn => 20,:winter => 21}],
              :watermelon => [0,{:spring => 50,:summer => 50,:autumn => 50,:winter => 50}]
              }
  end

  def add_item_to_cart(item)
    @list[item] = @items[item]
    @list[item][0]+=1
    @list[item][1].select!{|k,v| k == :spring}

  end

  def show
    puts "Quantity\t Product\t Price"
    puts "--------------------------------------------"
    @list.each do |key, value|
      puts "#{value[0]}\t\t #{key}\t\t #{value[1][:spring]*value[0]}$"
    end
  end

    def cost
      sum = 0
      @list.each do |key, value|
        total = value[1][:spring]*value[0]
        sum = sum + total
      end
      puts "--------------------------------------------"
      puts "\t\t\tTOTAL =  #{sum}$"
    end

    def discount

      if @list[:apple][0] % 2 == 0
        (@list[:apple][0] / 2)*@list[:apple][1]
      end
    end

end



cart = ShoppingCart.new

cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana
cart.add_item_to_cart :watermelon
cart.add_item_to_cart :orange
cart.add_item_to_cart :grapes
cart.add_item_to_cart :grapes
cart.add_item_to_cart :banana


cart.show
cart.cost
