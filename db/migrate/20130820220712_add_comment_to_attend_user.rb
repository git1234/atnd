class AddCommentToAttendUser < ActiveRecord::Migration
  def change
    add_column :attend_users, :comment, :text
  end
end
