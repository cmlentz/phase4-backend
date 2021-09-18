class SaleSerializer < ActiveModel::Serializer
  attributes :id
  has_one :shop
  has_one :animal
end