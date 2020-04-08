class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :communities
  has_many :submissions
  has_many :comments

  validates_uniqueness_of :username
  validates_presence_of :username

  acts_as_voter
end
