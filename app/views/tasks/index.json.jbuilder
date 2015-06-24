json.array!(@tasks) do |task|
  json.extract! task, :id, :seq, :descr, :seqpai, :typo, :hour, :projeto
  json.url task_url(task, format: :json)
end
