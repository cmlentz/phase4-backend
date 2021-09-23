class Sale < ApplicationRecord
  belongs_to :animal
  belongs_to :shop
end
