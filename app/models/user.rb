class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :image
  has_many :tweets
  has_many :admins
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
 
end
