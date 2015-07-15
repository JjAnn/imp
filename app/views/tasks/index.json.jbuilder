json.array!(@tasks) do |task|
  json.extract! task, :id, :raiz, :descr, :hour, :typo
  json.url task_url(task, format: :json)
end
