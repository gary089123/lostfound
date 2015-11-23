json.array!(@lostfounds) do |lostfound|
  json.extract! lostfound, :id, :name
  json.url lostfound_url(lostfound, format: :json)
end
