json.extract! horse, :id, :horse_name, :horse_number, :jockey, :trainer, :current_win, :current_places, :created_at, :updated_at
json.url horse_url(horse, format: :json)
