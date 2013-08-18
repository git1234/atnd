class CreateAttendUsers < ActiveRecord::Migration
  def change
    create_table :attend_users do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :status

      t.timestamps
    end
  end
end
