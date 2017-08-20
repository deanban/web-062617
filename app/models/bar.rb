class Bar < ApplicationRecord
	has_many :bar_bartenders
	has_many :bartenders, through: :bar_bartenders
end
