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

get '/activities' do
  Activity.all.to_json
end

get '/cities/:id' do
    city = City.find(params[:id])
    city.to_json
end

post '/cities' do
    city = City.create(params)
    city.to_json
end

post '/activities' do
  activity = Activity.create(params)
  activity.to_json
end

# patch
patch '/cities/:id' do
  city = City.find(params[:id])
  city.update(params)
  city.to_json
end

patch '/activities/:id' do
  activity = Activity.find(params[:id])
  activity.update(params)
  activity.to_json
end

# delete
delete '/cities/:id' do
  city = City.find(params[:id])
  city.destroy
end

delete '/activities/:id' do
  activity = Activity.find(params[:id])
  activity.destroy
end

# private

# def city_params
#   params.permit(:name)
# end


end
