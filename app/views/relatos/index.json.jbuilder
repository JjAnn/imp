json.array!(@relatos) do |relato|
  json.extract! relato, :id, :client, :project, :local, :taskid, :time, :comment, :isdoe
  json.url relato_url(relato, format: :json)
end
