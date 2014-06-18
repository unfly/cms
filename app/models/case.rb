class Case < ActiveRecord::Base

	validates :name, :phone, presence: true
	validates :phone, uniqueness: true, numericality: {only_integer: true}

	belongs_to :school
	belongs_to :source
	has_many :records
end
