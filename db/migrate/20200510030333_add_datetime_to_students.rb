class AddDatetimeToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :date, :datetime
  end
end
