class Shop < ApplicationRecord
  has_many :sales
  has_many :animals, through: :sales
end
