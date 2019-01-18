class CookbookSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title
  has_many :cookbook_recipes
end
