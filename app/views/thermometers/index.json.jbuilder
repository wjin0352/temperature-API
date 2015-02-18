json.array!(@thermometers) do |thermometer|
  json.extract! thermometer, :id, :temp
  json.url thermometer_url(thermometer, format: :json)
end
