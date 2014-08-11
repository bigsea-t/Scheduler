class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :event_users do |t|
      t.integer :event_id
      t.integer :owner_id
      t.integer :attender_id

      t.timestamps
    end
  end
end
