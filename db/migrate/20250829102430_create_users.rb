class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.text :bio
      t.string :twitter_url

      t.timestamps
    end
  end
end
