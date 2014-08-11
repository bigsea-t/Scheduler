class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :event_users do |t|
      t.integer :event_id
      t.integer :owner_id
      t.integer :attender_id

      t.timestamps
    end
    add_index :event_users, :event_id
    add_index :event_users, :owner_id
    add_index :event_users, :attender_id
    add_index :event_users, [:event_id, :owner_id], unique:true
    add_index :event_users, [:event_id, :attender_id], unique:true
  end
end
