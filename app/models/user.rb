class User < ApplicationRecord
  extend FriendlyId

  before_create :add_unsubscribe_hash  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :submissions
  has_many :comments
  has_many :subscriptions
  has_many :communities, through: :subscriptions
  has_many :subscribed_submissions, through: :communities, source: :submissions

  validates_uniqueness_of :username
  validates_presence_of :username

  acts_as_voter

  friendly_id :username, use: :slugged

  private

  def add_unsubscribe_hash
    self.unsubscribe_hash = SecureRandom.hex
  end
end
