class Employee < ActiveRecord::Base
	validates :name, presence: true, uniqueness: {case_sensitive: false}
	validates :post, numericality: {only_integer: true}

	has_secure_password

	def post_list
		
	end

end
