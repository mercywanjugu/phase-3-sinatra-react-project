class Book <ActiveRecord::Base
    #belong to bth author and category
    belongs_to :author
    
    #book.author/read the author that the book belongs to
    #post.author=/set the author that the book belongs to
    belongs_to :category
    #books is a join table
end