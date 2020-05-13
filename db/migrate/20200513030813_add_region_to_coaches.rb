class AddRegionToCoaches < ActiveRecord::Migration[6.0]
  def change
    add_column :coaches, :region, :string
  end
end
