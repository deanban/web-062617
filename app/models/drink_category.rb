class DrinkCategory < ApplicationRecord
	has_many :drinks
	has_many :bartenders
end
