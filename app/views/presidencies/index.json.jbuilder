json.array!(@presidencies) do |presidency|
  json.extract! presidency, :id, :cabinet_id
  json.url presidency_url(presidency, format: :json)
end
