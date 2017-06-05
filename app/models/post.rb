class Post < ActiveRecord::Base
	belongs_to :subject
	belongs_to :user

	rewarding

	acts_as_votable
	acts_as_commentable

	has_attached_file :attachment, :path => ":rails_root/storage/#{Rails.env}#{ENV['RAILS_TEST_NUMBER']}/attachments/:id/:style/:basename.:extension"
  	validates_attachment :attachment, content_type: { content_type: "application/pdf" }, :message => "Tipo de anexo inválido. Tipos válidos: PDF"

  	before_save :destroy_attachment?

    def post_owner
      @post_owner = @post.user
    end
    
  	def delete_attachment
  		@delete_attachment ||= "0"
  	end

  	def delete_attachment=(value)
  		@delete_attachment = value
  	end

  	private
  		def destroy_attachment?
  			self.image.clear if @delete_attachment == "1"
  		end
end
