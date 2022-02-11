class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction","Non-Fiction"] }

    validate :clickbait

    def clickbait
        
        if title.include?("Won't Believe") 
            true
        else 
            errors.add(:title, "not click baity")
       
        end
    end
end
