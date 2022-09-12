class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get '/books' do
    allbooks = Book.all
    allbooks.to_json(include: :user)
    #  {user: {only: [:name], include: {author_id: {only: [:name], include: {genre_id: {only: [:name]}}}}}})
end

get '/authors' do
    allauthors = Author.all
    allauthors.to_json(include: :books)
 end

 get '/reviews' do
  allreviews = Review.all
  allreviews.to_json(include: :books)
 end

 post '/reviews' do
  send_it = Review.create(
    name: params[:name],
    body: params[:body],
    email: params[:email],
  )
  send_it.to_json
end
post '/books' do
  send_it = Book.create(
    title: params[:title],
    genre_id: params[:genre_id],
    author_id: params[:author_id],
  )
  send_it.to_json
end

# get '/genres' do
#   allgenres = Genres.all
#   allgenres = .to_json(include: :name)

# end
end
