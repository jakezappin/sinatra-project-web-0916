class BusinessesContoller < ApplicationController


  get '/businesses' do
    @businesses = Business.all
    erb :'businesses/index'
  end

  get '/businesses/find' do
    erb :'businesses/find'
  end

  post '/businesses/found' do
    Business.destroy_all
    YelpApi.search(params[:location], params[:cusine])

    redirect to '/businesses'
  end


end
