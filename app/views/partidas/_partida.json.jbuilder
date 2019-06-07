json.extract! partida, :id, :title, :description, :local, :data_partida, :created_at, :updated_at
json.url partida_url(partida, format: :json)
