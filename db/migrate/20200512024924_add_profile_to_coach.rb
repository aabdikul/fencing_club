class AddProfileToCoach < ActiveRecord::Migration[6.0]
  def change
    add_column :coaches, :profile, :string
  end
end
