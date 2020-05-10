class Lesson < ApplicationRecord
	belongs_to :coach
	belongs_to :student
end
