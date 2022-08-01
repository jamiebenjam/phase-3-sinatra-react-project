class CitiesController < ApplicationController

# get
get '/cities' do
    cities = City.all
    # { message: "cities" }.to_json
    cities.to_json
end

# dynamic routes

get '/cities/:id' do
    city = City.find(params[:id])
    city.to_json
end

# post
post '/cities' do
    # cities = City.all
    # { message: "cities_post" }.to_json
    city = City.create(city_params)
    city.to_json
    # cities.to_json
end

end