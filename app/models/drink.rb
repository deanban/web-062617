class Drink < ApplicationRecord
  belongs_to :drink_category, optional: true
end
