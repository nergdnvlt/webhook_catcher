class CreateYearlySubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :yearly_subscriptions do |t|
      t.jsonb :data
      t.string :sub_id
      t.boolean :active, null: false, default: true

      t.timestamps
    end

    add_index :yearly_subscriptions, :sub_id, unique: true
  end
end
