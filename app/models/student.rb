class Student < ApplicationRecord
	has_secure_password 

	def full_name
		self.first_name.capitalize + " " + self.last_name.capitalize
	end

end
