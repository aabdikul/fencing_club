class AddYearsToCoaches < ActiveRecord::Migration[6.0]
  def change
    add_column :coaches, :years, :integer
  end
end
