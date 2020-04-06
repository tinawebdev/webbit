class Submission < ApplicationRecord
  mount_uploader :submission_image, SubmissionImageUploader
  mount_uploader :submission_video, SubmissionVideoUploader

  belongs_to :user
  belongs_to :community

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, length: { maximum: 8000 }
  validates :url, url: { allow_blank: true }
end
