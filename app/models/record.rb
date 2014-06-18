class Record < ActiveRecord::Base

	validates :comment, presence: true

	has_many :cases
end
