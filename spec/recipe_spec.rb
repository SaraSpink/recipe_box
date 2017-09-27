require("spec_helper")

# describe(Recipe) do
#   it("has a particular ingredient") do
#     test_ingredient = Ingredient.create({:name => "cocoa powder"})
#     test_recipe = Recipe.create({:name => "Gooey Brownie", :instructions => "how to make", :rating => 5})
#     expect(test_recipe.ingredients()).to(eq([test_ingredient]))
#   end
# end

describe(Recipe) do
  it { should have_many(:ingredients)}
end
