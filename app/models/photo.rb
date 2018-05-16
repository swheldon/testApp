class Photo < ApplicationRecord
	include ImageUploader::Attachment.new(:image) # adds an 'image' virtual attribute
	validates :description, presence: true
end
