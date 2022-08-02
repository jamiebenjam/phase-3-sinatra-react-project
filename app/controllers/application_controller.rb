class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
get "/" do
  { message: "Good luck with your project!" }.to_json
end

get '/cities' do
  cities = City.all
  cities.to_json
end

get '/cities/:id' do
    city = City.find(params[:id])
    city.to_json
end

post '/cities' do
    city = City.create(params)
    city.to_json
end

# private

# def city_params
#   params.permit(:name)
# end


end
