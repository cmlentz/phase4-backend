class ShopWithAnimalsSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state
  has_many :animals
end