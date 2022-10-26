require "faker"

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
50.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end

puts "Finished! #{Restaurant.count} restaurants created"
