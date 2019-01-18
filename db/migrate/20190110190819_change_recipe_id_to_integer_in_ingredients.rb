class ChangeRecipeIdToIntegerInIngredients < ActiveRecord::Migration[5.2]
  def change
    change_column :ingredients, :recipe_id, :integer, using: 'recipe_id::integer'
  end
end
