class AddUserGeneratedToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :user_generated, :boolean
  end
end
