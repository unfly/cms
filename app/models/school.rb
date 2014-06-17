class School < ActiveRecord::Base

	validates :name, :address, presence: true

	has_many :cases
end
