class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :genre_id, null: false
      t.text :overview, null: false
      t.string :project, null: false
      t.date :date, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.string :address, null: false
      t.timestamps
    end
  end
end
