require("spec_helper")


describe(Recipe) do
  it { should have_many(:ingredients)}

  it { should have_many(:categories)}

  it("will show recipe name and rating") do
    test_recipe = Recipe.create({name: "Spink secret brownies", rating: 1})
    expect(test_recipe).to(eq(test_recipe))
  end

  it("validates presence of a recipe name") do
    recipe = Recipe.new({:name => ""})
    expect(recipe.save()).to(eq(false))
  end


end



# describe('#ingredients') do
#   it("will show ingredients in a recipe") do
#     test_recipe = Recipe.create({name: "Spink secret brownies", rating: 1})
#     test_ingredient1 = Ingredient.create({name:"eggs"})
#     test_ingredient2 = Ingredient.create({name:"coco powder"})
#     test_recipe.ingredients.push(test_ingredient1)
#     test_recipe.ingredients.push(test_ingredient2)
#     expect(test_recipe.ingredients).to(eq([test_ingredient1, test_ingredient2]))
#   end
# end
