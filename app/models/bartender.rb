class Bartender < ApplicationRecord
  has_many :bar_bartenders
  has_many :bars, through: :bar_bartenders
  belongs_to :drink_category
end
