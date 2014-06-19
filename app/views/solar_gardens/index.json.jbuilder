json.array!(@solar_gardens) do |solar_garden|
  json.extract! solar_garden, :id, :size, :address, :city, :zip, :operator, :contact_name, :contact_phone, :contact_email
  json.url solar_garden_url(solar_garden, format: :json)
end
