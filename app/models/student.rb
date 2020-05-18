class Student < ApplicationRecord
	has_secure_password 
	has_many :lessons
	has_many :coaches, through: :lessons
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :age, numericality: { greater_than_or_equal_to: 5, message: "Student is not 5 years old or older."}
	validates :weapon, inclusion: { in: %w(Foil Epee Sabre),
    message: "%{value} is not a valid weapon choice." }
    validates :username, presence: true

	def full_name
		self.first_name.capitalize + " " + self.last_name.capitalize
	end

	def self.find_or_create_by_omniauth(auth_hash)
		oauth_login = auth_hash["info"]["nickname"]
		if student = Student.find_by(username: oauth_login)
		   return student
		else
			student = Student.create(username: oauth_login, password: SecureRandom.hex)
		end
	end



end
