class ImageSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :title
  has_one :user
end
