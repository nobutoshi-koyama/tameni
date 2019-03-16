class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :image
  
  has_many :tweets
  has_many :dayoftweet
  has_many :admins
  has_many :memos
  has_many :comments
  has_many :checks
  
  
  def already_checked?(memo)
    self.checks.exists?(memo_id: memo.id)
  end
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true
  validates :stage_title, presence: true
  validates :tel, presence: true
  validates :address, presence: true
  # validates :image, presence: true
  
         
 
end
