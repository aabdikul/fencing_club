class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.integer :student_id
      t.integer :coach_id

      t.timestamps
    end
  end
end
