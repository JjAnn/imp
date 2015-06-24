json.array!(@locals) do |local|
  json.extract! local, :id, :clienteid, :logra, :cep, :uf, :city, :km
  json.url local_url(local, format: :json)
end
