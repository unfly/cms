class Case < ActiveRecord::Base

	validates :name, :phone, presence: true
	validates :phone, uniqueness: true, numericality: {only_integer: true}

	belongs_to :school
end
