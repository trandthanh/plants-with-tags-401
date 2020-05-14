Garden.destroy_all if Rails.env.development?

puts "starting seed..."

little = Garden.create!(
  name: 'My little garden',
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

other = Garden.create!(
  name: 'My other garden',
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

puts "garden seeded!"

philo = Plant.create!(
  name: 'Philo',
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: little
)

monstera = Plant.create!(
  name: 'Monstera',
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: little
)

dieffenbachia = Plant.create!(
  name: 'Dieffenbachia',
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: other
)

puts "plants seeded!"
