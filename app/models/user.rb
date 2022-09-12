class User < ActiveRecord::Base
    has_many :books
    has_many :authors, through: :books
    has_many :reviews
    has_many :books, through: :reviews
end