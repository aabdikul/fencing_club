class Student < ApplicationRecord
	has_secure_password 
	has_many :lessons
	has_many :coaches, through: :lessons

	def full_name
		self.first_name.capitalize + " " + self.last_name.capitalize
	end

end
