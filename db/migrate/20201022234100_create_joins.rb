class CreateJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :joins do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :name_kanji
      t.string :name_kana
      t.string :email
      t.string :phone
      t.text :message
      t.timestamps
    end
  end
end
