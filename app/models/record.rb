class Record < ActiveRecord::Base

	validates :description, presence: true

	has_many :cases
end
