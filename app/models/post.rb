class Post < ActiveRecord::Base
	belongs_to :subject
	belongs_to :user

	acts_as_votable
	acts_as_commentable

	has_attached_file :attachment, :path => ":rails_root/storage/#{Rails.env}#{ENV['RAILS_TEST_NUMBER']}/attachments/:id/:style/:basename.:extension"
  	validates_attachment :attachment, content_type: { content_type: "application/pdf" }
end
