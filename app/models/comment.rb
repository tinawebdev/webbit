class Comment < ApplicationRecord
  belongs_to :submission
  belongs_to :user
  validates :reply, presence: true
end
