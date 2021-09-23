class Animal < ApplicationRecord
  has_many :sales, dependent: :destroy
  has_many :shops, through: :sales
end