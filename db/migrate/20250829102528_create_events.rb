class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :date, null: false
      t.string :location, null: false
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.text :description

      t.timestamps
    end

    add_index :events, :date
    add_index :events, [:latitude, :longitude]
  end
end
