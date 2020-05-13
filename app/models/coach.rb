class Coach < ApplicationRecord
	has_many :lessons 
	has_many :students, through: :lessons
	
	def self.master(input)
		where("years >= ?", input)
	end

	def self.area(input)
		where(region: input)
	end

	def self.area_master(experience, region)
		where("years >= ? AND region = ?", experience, region)
	end

end
