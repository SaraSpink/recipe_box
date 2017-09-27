class DropCategoriesRecipiesAndCreateTag < ActiveRecord::Migration[5.1]
  def change
    rename_table(:categories_recipes, :tags)
  end
end
