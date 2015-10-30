json.array!(@brokers) do |broker|
  json.extract! broker, :id, :broker_name, :broker_details, :locations, :products, :office_hour, :support, :trading_functionality, :features
  json.url broker_url(broker, format: :json)
end
