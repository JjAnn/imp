json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :name, :telefone, :celular, :email
  json.url cliente_url(cliente, format: :json)
end
