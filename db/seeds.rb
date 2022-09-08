puts "🌱 Seeding spices..."

# Seed your database here

100.times do 
    seeded_authors = Author.create(
        name: Faker::Name.name
    )
end

puts "✅ Done seeding!"
