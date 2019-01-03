class RenameTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :licenses, :monthly_licenses
  end
end
