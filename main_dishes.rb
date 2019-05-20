# User chooses list of MainDishes
    # XX Class which holds main dishes
    # --method to pushes selection to Order

# User chooses to two SideDishes
    # XX Class which holds side dishes
    # --method to push selection to Order
# Computer repeats Order
    #-- Variable to accept push from MainDish and SideDish to order
    #-- method to push to Totals

# Computer Totals lunch items and displays 
  # variable to accept Total from Order
  # method to output total

  class MainDishes
    attr_reader :main_menu
    
    
    def initialize
      @main_menu = []
    end

    def add_dish(name, price)
      @main_menu.push(name: name, price: price )
    end

    def print_dishes
      @main_menu.each do |dish|
        puts dish[:name].ljust(30) + "$".rjust(10) + sprintf("%0.2f", dish[:price]).rjust(10)
      end
    end

    def main_total
      total = 0
      @main_menu.each do |price|
        total+= price[:price]
      end
     return sprintf("%0.2f", total)
    end    
  end

