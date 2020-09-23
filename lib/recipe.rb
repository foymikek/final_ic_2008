class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name)
    @name                 = name
    @ingredients_required = Hash.new
  end

  def add_ingredient(ingredient, amount)
    if @ingredients_required[ingredient].nil?
      @ingredients_required[ingredient] = amount
    else
      @ingredients_required[ingredient] += amount
    end
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    calories_sum = 0
    @ingredients_required.each do |ingredient, quantity|
      calories_sum += (ingredient.calories * quantity)
    end
    calories_sum
  end

end
