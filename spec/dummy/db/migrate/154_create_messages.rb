class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages, :force => true do |t|
      t.datetime :read_at
      t.integer  :receiver_id, :sender_id
      t.string   :subject, :null => false
      t.text     :body
      t.timestamps
      t.integer :message_request_id
    end

    add_index :messages, :sender_id
    add_index :messages, :receiver_id
    add_index :messages, :message_request_id
  end

  def self.down
    drop_table :messages
  end
end
