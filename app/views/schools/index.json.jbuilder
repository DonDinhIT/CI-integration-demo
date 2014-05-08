json.array!(@schools) do |school|
  json.extract! school, :id, :name, :level
  json.url school_url(school, format: :json)
end
