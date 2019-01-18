class RecipeSerializer < ActiveModel::Serializer
  attributes :title, :image_url, :source_url, :publisher_name, :publisher_url, :user_generated
end
