class Tweet < ApplicationRecord
    belongs_to :user
    belongs_to :dayoftweet
    
    
    
    # validates :menu, presence: true
    # validates :text, presence: true
    # validates :quantity, presence: true
    # validates :start_year, presence: true
    # validates :start_month, presence: true
    # validates :start_day, presence: true
    # validates :end_year, presence: true
    # validates :end_month, presence: true
    # validates :end_day, presence: true
    
    
    
    def self.search(search)
      return Tweet.all unless search
      Tweet.where(['content LIKE ?', "%#{search}%"])
    end
    
    
    
    
end
