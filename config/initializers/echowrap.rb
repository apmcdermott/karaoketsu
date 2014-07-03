Echowrap.configure do |config|
  config.api_key =       ENV['API_KEY']
  config.consumer_key =  ENV['CONSUMER_KEY']
  config.shared_secret = ENV['SHARED_SECRET']
end
