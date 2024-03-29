class CreateChats < ActiveRecord::Migration[7.1]
  def change
    create_table :chats do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :chats, :name, unique: true
  end
end
