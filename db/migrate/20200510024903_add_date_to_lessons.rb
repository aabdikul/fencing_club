class AddDateToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :lesson_date, :date
  end
end
