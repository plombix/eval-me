class Eval < ApplicationRecord
	has_many :questions, dependent: :destroy
end
