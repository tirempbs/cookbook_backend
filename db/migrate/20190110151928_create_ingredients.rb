class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :recipe_id
      t.string :line_item

      t.timestamps
    end
  end
end
