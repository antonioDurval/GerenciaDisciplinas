json.extract! avaliacao, :id, :pontos, :observacoes, :created_at, :updated_at
json.url avaliacao_url(avaliacao, format: :json)
