class Event < ActiveRecord::Base
	has_many :comments
	has_many :attene_users
	has_many :users, through: :attene_users
	belongs_to :user
end
