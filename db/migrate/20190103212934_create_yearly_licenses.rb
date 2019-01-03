class CreateYearlyLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :yearly_licenses do |t|
      t.jsonb :data
      t.string :license_key

      t.timestamps
    end
  end
end
