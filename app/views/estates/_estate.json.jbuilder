json.extract! estate, :id, :estate_address, :area, :bedrooms, :bathrooms, :square_footage, :rent, images, :created_at, :updated_at
json.url estate_url(estate, format: :json)
