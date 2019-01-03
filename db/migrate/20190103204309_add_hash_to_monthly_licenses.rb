class AddHashToMonthlyLicenses < ActiveRecord::Migration[5.2]
  def change
    add_column :monthly_licenses, :hash, :string
  end
end
