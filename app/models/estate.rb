class Estate < ApplicationRecord


  #has_many :estate_comments, dependent: :destroy
	validates :estate_address, presence: true, length: { minimum: 5 }
	validates :bedrooms, presence: true, length: { maximum: 3, too_long: "%{count} characters is the maximum allowed" }
	validates :bathrooms, presence: true, length: { maximum: 3, too_long: "%{count} characters is the maximum allowed" }
	validates :square_footage, presence: true, length: { maximum: 7, too_long: "%{count} characters is the maximum allowed" }
	validates :rent, presence: true, length: { maximum: 6, too_long: "%{count} characters is the maximum allowed" }
	#mount_uploader :image, ImageUploader	

end

