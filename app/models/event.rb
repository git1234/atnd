class Event < ActiveRecord::Base
	has_many :comments
	has_many :attend_users
	has_many :users, through: :attend_users
	belongs_to :user
end
