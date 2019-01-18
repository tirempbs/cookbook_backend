class ChangeUserIdToIntegerInCookbooks < ActiveRecord::Migration[5.2]
  def change
    change_column :cookbooks, :user_id, :integer, using: 'user_id::integer'
  end
end
