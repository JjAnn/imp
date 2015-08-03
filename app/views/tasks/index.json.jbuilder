json.array!(@tasks) do |task|
<<<<<<< HEAD
  json.extract! task, :id, :raiz, :descr, :hour, :typo
=======
  json.extract! task, :id, :seq, :descr, :seqpai, :typo, :hour, :projeto
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
  json.url task_url(task, format: :json)
end
