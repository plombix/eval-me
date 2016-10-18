class Eval < ApplicationRecord
	has_many :questions, dependent: :destroy
	scope :viewable, -> { where(viewable: true) }
end
