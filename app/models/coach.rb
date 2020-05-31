class Coach < ApplicationRecord
	has_many :lessons 
	has_many :students, through: :lessons
	scope :master, -> (input) {where("YEARS >= ?", input)}
	scope :area, -> (input) {where("region = ?", input)}

	def self.area_master(experience, region)
		where("years >= ? AND region = ?", experience, region)
	end

	def self.most_lessons
		Lesson.find_by_sql("SELECT * FROM lessons GROUP BY coach_id ORDER BY COUNT(coach_id) DESC LIMIT 1 ").first.coach
	end

end
