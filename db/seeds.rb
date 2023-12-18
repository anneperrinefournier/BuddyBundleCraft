# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

p "is detroying - #{Service.all.count} services - #{User.all.count} users - #{Booking.all.count} bookings"
Booking.destroy_all
Service.all.each do |vehicle|
  service.photo.purge
end
User.destroy_all
Service.destroy_all

p "destroyed- services: #{Service.all.count} - users:#{User.all.count} – #{Booking.all.count} bookings"
p "destroyed- bookings:#{Booking.all.count}"
p "number of services"
p Service.count
p "number of users"
p User.count
p "number of bookings"
p Booking.count

monica = User.new(
  email: 'monica@gmail.com',
  password: 'password'
)
monica.save!

service1 = Service.new(
  user_id: monica.id,
  name: 'Pose et fixation',
  service_type: 'Bricolage',
  address: 'Clichy',
  price_per_hour: 50
)
service1.save!

service2 = Service.new(
  user_id: monica.id,
  name: 'Réparation',
  service_type: 'Bricolage',
  address: 'Paris',
  price_per_hour: 30
)
service2.save!

p "created services number - #{Service.all.count} / user number #{User.all.count} / booking number #{Booking.all.count} "
