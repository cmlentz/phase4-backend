class Shop < ApplicationRecord
  has_many :sales, dependent: :destroy
  has_many :animals, through: :sales
end
