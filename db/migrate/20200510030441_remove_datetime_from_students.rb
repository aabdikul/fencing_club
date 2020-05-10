class RemoveDatetimeFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :date, :datetime
  end
end
