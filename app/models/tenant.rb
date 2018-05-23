class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Tenant < ApplicationRecord
	validates :last_name, presence: true, length: { maximum: 40 }
	validates :first_name, presence: true, length: { maximum: 5 }
	validates :address, presence: true, length: { minimum: 5 }
	validates :phone_number, presence: true, uniqueness: true, length: { maximum: 16 }
	validates :email, presence: true, email: true, uniqueness: true, length: { maximum: 80 }
	validates :tenant_count, presence: true, length: { maximum: 2 }
	validates :move_in_date, presence: true, length: { maximum: 10 }
	validates :term_months, presence: true, length: { maximum: 3 }

end
