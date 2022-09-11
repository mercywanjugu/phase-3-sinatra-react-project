class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get '/books' do
    allbooks = Book.all
    allbooks.to_json(include: :authors)
end

get '/authors' do
    allauthors = Author.all
    allauthors.to_json(include: :books)
end


end
