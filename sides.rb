class Sides
  
  attr_reader :side_menu
    
    
    def initialize
      @side_menu = []
    end

    def side_dish(name, price)
      @side_menu.push(name: name, price: price)
    end

    def print_dishes
      @side_menu.each do |side|
        puts side[:name].ljust(30) + "$".rjust(10) + sprintf("%0.2f", side[:price]).rjust(10)
      end
    end

    def side_total
      total = 0
      @side_menu.each do |price|
        total+= price[:price]
      end
      return sprintf("%0.2f", total)
    end
end





 