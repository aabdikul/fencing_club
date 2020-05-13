class AddCityToCoaches < ActiveRecord::Migration[6.0]
  def change
    add_column :coaches, :city, :string
  end
end
