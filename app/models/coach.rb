class Coach < ApplicationRecord
	has_many :lessons 
	has_many :students, through: :lessons
end
