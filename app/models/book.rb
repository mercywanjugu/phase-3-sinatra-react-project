class Book <ActiveRecord::Base
    has_many :bookauthors
    has_many :authors ,through: :bookauthors
end  