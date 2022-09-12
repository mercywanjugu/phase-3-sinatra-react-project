puts "🌱 Seeding spices..."

# Seed your database here

20.times do |num|
    Book.create(title: Faker::Book.title, year_published: rand(1999..2022), genre_id: rand(1..10), user_id:rand(1..30), author_id:rand(1..15))
end


30.times do 
    User.create(name: Faker::Name.name)
end

10.times do 
    Genre.create(name: Faker::Book.genre)
end

15.times do 
    Author.create(name: Faker::Book.author, bio: Faker::Name.name_with_middle)
end
20.times do
    Review.create(name: Faker::Restaurant.review, 
    user_id:rand(1..30),
    email: Faker::Internet.email)
end


# books = Book.all
# books.map do |book|
#     Bookauthor.create(book_id: book.id, author_id: rand(1..5))
#     Bookauthor.create(book_id: book.id, author_id: rand(1..5))
# end

puts "✅ Done seeding!"
