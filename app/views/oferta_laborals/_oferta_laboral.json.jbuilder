json.extract! oferta_laboral, :id, :name, :description, :created_at, :updated_at
json.url oferta_laboral_url(oferta_laboral, format: :json)
