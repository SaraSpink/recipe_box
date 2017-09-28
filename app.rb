require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

# get ("/") do
#   @recipes = Recipe.all()
#   erb(:index)
# end
#
# post ("/recipe") do
#   name = params["name"]
#   @recipes = Recipe.create({:name => name, :instructions => nil, :rating => nil})
#   erb(:index)
# end


# get ("/recipe/:id")
#   @name = Recipe.all()
#   @recipe_by_id = Recipe.create({})
#   erb(:recipe_detail)
# end

get ("/") do
  @recipes = Recipe.all()
  erb(:index)
end

post ("/") do
  @name = params["name"]
  @recipes = Recipe.create({:name => @name})
  redirect("/recipe/#{@recipes.id}")
end

get ("/recipe/:id") do
  @recipe_by_id = Recipe.find(params.fetch(:id).to_i())
  erb(:recipe_detail)
end

post ("/recipe/:id") do
  @recipe_by_id = Recipe.find(params.fetch(:id).to_i())
  ingredient = Ingredient.create({:name => params["ingredient"]})
  @recipe_by_id.ingredients.push(ingredient)
  erb(:recipe_detail)
end

delete("/recipe/:id") do
  @recipe = Recipe.find(params.fetch(:id).to_i())
  @recipe.destroy
  redirect("/")
end
