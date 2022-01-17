class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.integer :messages_count
      t.references :applications, null: false, foreign_key: true

      t.timestamps
    end
  end
end
