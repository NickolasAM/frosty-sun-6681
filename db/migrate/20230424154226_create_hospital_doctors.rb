class CreateHospitalDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :hospital_doctors do |t|
      t.references :hospital, foreign_key: true
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
