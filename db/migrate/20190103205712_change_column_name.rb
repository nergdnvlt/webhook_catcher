class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :monthly_licenses, :hash, :license_key
  end
end
