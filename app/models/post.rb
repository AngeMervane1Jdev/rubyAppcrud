class Post < ApplicationRecord
    validates :content, presence: true,length: { maximum: 140,minimum: 1 }
end
