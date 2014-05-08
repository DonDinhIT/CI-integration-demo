json.array!(@sumary_scores) do |sumary_score|
  json.extract! sumary_score, :id, :student_id, :score
  json.url sumary_score_url(sumary_score, format: :json)
end
