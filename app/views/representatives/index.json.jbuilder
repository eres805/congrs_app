json.array!(@representatives) do |representative|
  json.extract! representative, :id
  json.url representative_url(representative, format: :json)
end
