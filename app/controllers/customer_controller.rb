class CustomerController < ApplicationController

  get '/customers' do
    @customers = Customer.all
    erb :'/customers/index'
  end

  get '/customers/new' do
    erb :'/customers/new'
  end

  get '/customers/:id' do
    @customer = Customer.find(params[:id])
    erb :'/customers/show'
  end

  post '/customers' do
    @customer = Customer.find_or_create_by(name: params[:name])
    @customer.save

    redirect to "/customers/#{@customer.id}"
  end

end
