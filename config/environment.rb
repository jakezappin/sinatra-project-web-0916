require 'bundler/setup'
Bundler.require

require_all('app/')

set :database, {adapter: "sqlite3", database: "db/database.sqlite3"}

# require 'yelp'

# Yelp.client.configure do |config|
#   config.consumer_key = 'Q-DvJBRO0nb68ZXIOrd-dw'
#   config.consumer_secret = 'eaXFvYl5MdKvqYlfU3R2V8rIiQM'
#   config.token = '8aVxGbd5bAoYmlWXulMSooWrk1zpoad7'
#   config.token_secret = 'qj3Y4Os6nFXwtVjrxAaRjSuxoEA'
# end
