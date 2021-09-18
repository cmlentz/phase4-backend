class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state
end