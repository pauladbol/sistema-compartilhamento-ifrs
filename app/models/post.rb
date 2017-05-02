class Post < ActiveRecord::Base
	belongs_to :subject
	belongs_to :user

	acts_as_votable
end
