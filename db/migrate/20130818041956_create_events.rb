class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.datetime :date
      t.string :place
      t.text :url
      t.integer :user_id

      t.timestamps
    end
  end
end
