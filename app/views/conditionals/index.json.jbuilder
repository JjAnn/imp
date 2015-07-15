json.array!(@conditionals) do |conditional|
  json.extract! conditional, :id, :transla, :interval, :km, :data, :why, :time
  json.url conditional_url(conditional, format: :json)
end
