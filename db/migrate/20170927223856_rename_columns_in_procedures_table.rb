class RenameColumnsInProceduresTable < ActiveRecord::Migration[5.1]
  def change
    drop_table(:procedures)

    create_table(:procedures) do |t|
      t.column(:ingredient_id, :integer)
      t.column(:recipe_id, :integer)
      t.column(:measurement, :string)
    end
  end
end
