class CreateParticipations < ActiveRecord::Migration[7.1]
  def change
    create_table :participations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.text :message

      t.timestamps
    end
    add_index :participations, [:user_id, :event_id], unique: true
  end
end
