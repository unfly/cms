class Source < ActiveRecord::Base

	validates :content, presence: true

	has_many :cases
end
