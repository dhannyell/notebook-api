Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new # defaults to Rails.cache
Rack::Attack.blocklist_ip("192.168.15.5")

Rack::Attack.throttle("requests by ip", limit: 5, period: 2) do |request|
  request.ip
end

Rack::Attack.throttled_response = lambda do |env|
  # NB: you have access to the name and other data about the matched throttle
  #  env['rack.attack.matched'],
  #  env['rack.attack.match_type'],
  #  env['rack.attack.match_data'],
  #  env['rack.attack.match_discriminator']

  # Using 503 because it may make attacker think that they have successfully
  # DOSed the site. Rack::Attack returns 429 for throttling by default
  [ 503, {}, ["Server Error\n"]]
end
