class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new
  end

  def stock_check(ingredient_obj)
    if @stock[ingredient_obj].nil?
      0
    else
      @stock[ingredient_obj]
    end
  end

  def restock(ingredient, quantity)
    if @stock[ingredient].nil?
      @stock[ingredient] = quantity
    else
      @stock[ingredient] += quantity
    end
  end
end
