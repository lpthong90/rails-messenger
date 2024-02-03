class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :content, null: false
      t.belongs_to :user, null: false
      t.belongs_to :chat, index: true, null: false

      t.timestamps
    end
  end
end
