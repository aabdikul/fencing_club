class RemoveNameFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :name, :string
  end
end
