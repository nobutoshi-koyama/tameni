class Tweet < ApplicationRecord
    belongs_to :user
    
    def self.search(search)
      return Tweet.all unless search
      Tweet.where(['content LIKE ?', "%#{search}%"])
    end
end
