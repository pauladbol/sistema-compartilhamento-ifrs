class Post < ActiveRecord::Base
	belongs_to :subject
	belongs_to :user
end
