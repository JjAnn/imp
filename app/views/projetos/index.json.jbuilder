json.array!(@projetos) do |projeto|
  json.extract! projeto, :id, :clienteid, :name, :descr, :typo, :manager, :dateini, :datefin, :status
  json.url projeto_url(projeto, format: :json)
end
