class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    all_cook_book_ingredients = []
    @recipes.each do |recipe|
      all_cook_book_ingredients << recipe.ingredients
    end
    list_all_ingredients_in_cook_book = []
    all_cook_book_ingredients.flatten.each do |ingredient|
      list_all_ingredients_in_cook_book << ingredient.name
    end
    list_all_ingredients_in_cook_book.uniq
  end

  def highest_calorie_meal
    recipe_by_calories = {}
    @recipes.each do |recipe|
      if recipe_by_calories[recipe].nil?
        recipe_by_calories[recipe] = recipe.total_calories
      else
        recipe_by_calories[recipe] += recipe.total_calories
      end
    end
    highest_calorie_recipe = nil
    recipe_by_calories.values.max
    recipe_by_calories.each do |recipe, calories|
      highest_calorie_recipe = recipe if calories == recipe_by_calories.values.max
    end
    highest_calorie_recipe
  end

end
