class Author <ActiveRecord::Base
    has_many :bookauthors
  

    has_many :books, through: :bookauthors
    
end