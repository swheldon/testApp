class Tenant < ApplicationRecord
	validates :address, presence: true,
                    length: { minimum: 5 }
end
