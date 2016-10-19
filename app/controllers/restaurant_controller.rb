class RestaurantController < ApplicationController

  get '/restaurants' do
    @restaurants = Restaurant.all
    erb :'/restaurants/index'
  end

  get '/restaurants/new' do
    erb :'/restaurants/new'
  end

  post '/restaurants' do
    @restaurant = Restaurant.find_or_create_by(name: params[:name], rating: params[:rating], address: params[:address])
    @restaurant.save
    redirect to "/restaurants/#{@restaurant.id}"
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @customers = Customer.all
    @users = @restaurant.customers
    erb :'/restaurants/show'
  end

  patch '/restaurants/:id' do
    @add = RestaurantCustomer.create(restaurant_id: params[:id], customer_id: params[:customers][:id])
    redirect to "/restaurants/#{params[:id]}"
  end

  post '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(params["restaurant"])
    redirect to "/restaurants/#{@restaurant.id}"
  end


  get '/restaurants/:id/edit' do
    @restaurant = Restaurant.find(params[:id])
    erb :'/restaurants/edit'
  end

  delete '/restaurants/:id/delete' do
    @restaurant = Restaurant.find(params[:id])
    @restaurant.delete
    redirect to '/restaurants'
  end

end
