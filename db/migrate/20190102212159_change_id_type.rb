class ChangeIdType < ActiveRecord::Migration[5.2]
  def change
    change_column :payouts, :id, :string
  end
end
