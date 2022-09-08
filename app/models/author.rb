class Author <ActiveRecord::Base
    has_many :books
    # methods =>author.books
    #         =>author.books.build
    #         =>auther.books.create
    #         =>has many categories, through: :books

    has_many :categories, through: :books
end