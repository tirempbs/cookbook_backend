class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image_url
      t.string :source_url
      t.string :publisher_name
      t.string :publisher_url

      t.timestamps
    end
  end
end
