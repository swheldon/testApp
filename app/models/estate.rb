class Estate < ApplicationRecord


  #has_many :estate_comments, dependent: :destroy
	validates :estate_address, presence: true,
	           length: { minimum: 5 }
	

end

