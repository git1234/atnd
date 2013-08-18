class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :web_site, :text
    add_column :users, :greeting_string, :string
  end
end
