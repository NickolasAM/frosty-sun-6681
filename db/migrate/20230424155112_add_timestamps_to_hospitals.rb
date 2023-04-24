class AddTimestampsToHospitals < ActiveRecord::Migration[5.2]
  def change
    add_column :hospitals, :created_at, :datetime
    add_column :hospitals, :updated_at, :datetime
  end
end
