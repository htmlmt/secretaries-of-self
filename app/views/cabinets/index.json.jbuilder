json.array!(@cabinets) do |cabinet|
  json.extract! cabinet, :id, :user_id
  json.url cabinet_url(cabinet, format: :json)
end
