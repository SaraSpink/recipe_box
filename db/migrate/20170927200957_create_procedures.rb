class CreateProcedures < ActiveRecord::Migration[5.1]
  def change
    create_table(:procedures) do |t|
      t.column(:ingredients_id, :integer)
      t.column(:recipes_id, :integer)
      t.column(:measurement, :string)
    end
  end
end
