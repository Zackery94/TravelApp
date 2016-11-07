json.extract! trip, :id, :name, :rating, :people, :type, :created_at, :updated_at
json.url trip_url(trip, format: :json)