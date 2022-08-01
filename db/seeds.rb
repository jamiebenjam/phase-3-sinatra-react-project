puts "🌱 Seeding spices..."

# #city
# c1 = City.create(name: "New York")
# c2 = City.create(name: "Chicago")

# #activities
# a1 = Activity.create(museum: "MOMA", restaurant: "Raos", park: "Central Park", misc: "shopping", city_id: c1.id)
# a2 = Activity.create(museum: "Art Institute", restaurant: "Giodornos", park: "Millenium Park", misc: "architecture tour", city_id: c2.id)

$city_data = [
    {
    name:"New York"
    },
    {
        name:"Chicago"
    }
]

$activity_data = [
    {
        museum: "MOMA", 
        restaurant: "Raos", 
        park: "Central Park", 
        misc: "shopping"
    },
    {
        museum: "Art Institute", 
        restaurant: "Giodornos", 
        park: "Millenium Park", 
        misc: "architecture tour"
    }
]

# $cities_data.each{|c| City.create(c)}
# $activities_data.each{|a| Activity.create(a)}
puts "✅ Done seeding!"
