class Comment < ApplicationRecord
  include VotesCountable
  
  belongs_to :submission
  belongs_to :user

  validates :reply, presence: true
  
  acts_as_votable
end
