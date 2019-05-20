require_relative "main_dishes"
require_relative "sides"

class Order
  attr_accessor :order, :total

  def initialize
    @order = []
    @total = 0
  end

def menu
  puts "Welcome to the DevPoint Labs Restaurant!"
  puts "Let's order, please make a selection for your Main Dish"
  main_dish_menu
  puts "Great! Please select a side dish"
  side_dish_menu
  puts "Excellent! Please choose a second side."
  side_dish_menu
  print_order
  order_total
end

def main_dish_menu
  main_dish_menu = MainDishes.new
  main_dish_menu.add_dish("Spagetti", 15.00)
  main_dish_menu.add_dish("Steak", 25.00)
  main_dish_menu.add_dish("Chicken", 20.00)
  main_dish_menu.print_dishes
  main_choice = gets.chomp.downcase
  main_order(main_choice)
end

def side_dish_menu
  side = Sides.new
  side.side_dish("Salad", 5.00)
  side.side_dish("Asparagus", 5.00)
  side.side_dish("Potatos", 5.00)
  side.side_dish("Rice", 5.00)
  side.print_dishes
  side_dish_choice = gets.chomp.downcase
  side_order(side_dish_choice)
end

def main_order(item)
  if item == "spagetti"
    @order.push(item: "Spagetti", price: 15)
  elsif item == "steak"
    @order.push(item: "Steak", price: 25)   
  elsif item == "chicken"
    @order.push(item: "Chicken", price: 20)
  else
    puts "*" * 40
    puts "Please type a valid selection"
    puts "*" * 40
    main_dish_menu
  end  
end


def side_order(item)
  if item == "salad"
    @order.push(item: "Salad", price: 5)
  elsif item == "asparagus"
    @order.push(item: "Asparagus", price: 5)   
  elsif item == "potatos"
    @order.push(item: "Potatos", price: 5)
  elsif item == "rice"
    @order.push(item: "Rice", price: 5)
  else
    puts "*" * 40
    puts "Please type a valid selection"
    puts "*" * 40
    side_dish_menu
  end  
end

def print_order
  puts "Your order is:"  
  @order.each do |item|
    puts "*" + item[:item]
  end
end

def order_total  
  sum = 0
  @order.each do |price|
    sum +=price[:price]
  end
    puts "-" * 20 
    puts "Your total is: $#{sum}"
  end
end

order = Order.new
order.menu




