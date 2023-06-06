json.extract! locadora, :id, :nome, :contato, :endereco, :data_de_locacao, :data_de_devolucao, :valor_total, :created_at, :updated_at
json.url locadora_url(locadora, format: :json)
