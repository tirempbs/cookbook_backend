class CreateCookbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :cookbooks do |t|
      t.string :user_id
      t.string :title

      t.timestamps
    end
  end
end
