class AddDatetimeToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :date, :datetime
  end
end
