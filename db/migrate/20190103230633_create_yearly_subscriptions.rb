class CreateYearlySubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :yearly_subscriptions do |t|
      t.jsonb :data
      t.string :sub_id
      t.boolean :active

      t.timestamps
    end
  end
end
