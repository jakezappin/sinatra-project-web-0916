class YelpApi

  def self.client
    @client ||= Yelp::Client.new({ consumer_key: "Q-DvJBRO0nb68ZXIOrd-dw",
      consumer_secret: "eaXFvYl5MdKvqYlfU3R2V8rIiQM",
      token: "8aVxGbd5bAoYmlWXulMSooWrk1zpoad7",
      token_secret: "qj3Y4Os6nFXwtVjrxAaRjSuxoEA"
      })
  end

  def self.search(location, cusine)
    businesses = self.client.search(location, {term: cusine, sort: 1}).businesses
    businesses.map do |business|
      Business.create({name: business.name, address: business.location.display_address.join(', '), rating: business.rating, url: business.url})
    end
    #array
      #yelp business objects
    #turn thises into activerecord instances
    # map
  end

end


#bundle exec rake console ---> to test what you can get with ---> YelpApi.client.search(tacos)
