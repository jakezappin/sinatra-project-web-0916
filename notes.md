Time for another mini-project. Using the Yelp API, build a Sinatra web-app that allows you to add users and restaurants to your database and then choose which users want to visit which restaurant.

## Functionality

- A user should be able to add a new user
- A user should be able to see all other users
- A user should be able to add a restaurant
- A user should be able to select a user and add it to a restaurant's list of users

## Domain Modeling
- What's the relationship between a user and a restaurant?
- What models and controllers will you need?
- Break up the controllers based on their responsibility

Tables:
 User - name
 Join - user_id, resturant_id
 Restaurant - name, rating, address

Controllers:

 UserController -
   - Add a new user
   - See all the users

 UserResturantController

 ResturantController
   - add a resturanut
   - select user and add to resturant list of users

# Requests
- What type of requests will you use to create a new user and restaurant?
- What about seeing all users/restaurants and seeing individual users/restaurants
- In notes.md, write each type of request, the controller it hits, and action that deals with the request

When you've successfully built out an app that allows you to add a restaurant manually, add the Yelp API feature. We've included the Yelp gem. You'll need to login to get unique tokens at https://www.yelp.com/developers/documentation/v2/overview

<img src="/gifs/BasicSinatraAppwithAdapterPattern.gif">

Using the adapter pattern, allow your users to hit the API and get restaurant objects returned. Once your adapter pattern is working effectively, feel free to tool around with the API.


class YelpApi

@client ||= Yelp::Client.new({config.consumer_key = 'Q-DvJBRO0nb68ZXIOrd-dw'
  config.consumer_secret = 'eaXFvYl5MdKvqYlfU3R2V8rIiQM'
  config.token = '8aVxGbd5bAoYmlWXulMSooWrk1zpoad7'
  config.token_secret = 'qj3Y4Os6nFXwtVjrxAaRjSuxoEA'})

def self.search(location)
  client.earch(location, {term: 'food'})
end

end


bundle exec rake config.ru ---> to test what you can get with ---> YelpApi.client.search(tacos)
