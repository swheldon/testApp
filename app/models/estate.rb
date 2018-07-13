class Estate < ApplicationRecord


  #has_many :estate_comments, dependent: :destroy
	validates :address_line_1, presence: true, length: { maximum: 255 }
	validates :address_line_2, length: { maximum: 255 }
	validates :town, presence: true, length: { maximum: 35 }
	validates :county, length: { maximum: 255 }
	validates :postal_code, presence: true, length: { maximum: 8 }
	validates :bedrooms, presence: true, length: { maximum: 3, too_long: "%{count} characters is the maximum allowed" }
	validates :bathrooms, presence: true, length: { maximum: 3, too_long: "%{count} characters is the maximum allowed" }
	validates :square_footage, presence: true, length: { maximum: 7, too_long: "%{count} characters is the maximum allowed" }
	validates :rent, presence: true, length: { maximum: 6, too_long: "%{count} characters is the maximum allowed" }
	#mount_uploader :image, ImageUploader	

	has_one :tenant

	before_create do
    self.available_date = Time.now.strftime("%d/%m/%Y") unless self.available_date
    end
end

