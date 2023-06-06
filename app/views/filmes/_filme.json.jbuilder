json.extract! filme, :id, :nome, :genero, :created_at, :updated_at
json.url filme_url(filme, format: :json)
