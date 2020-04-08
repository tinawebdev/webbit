class Submission < ApplicationRecord
  include VotesCountable
  
  mount_uploader :submission_image, SubmissionImageUploader
  mount_uploader :submission_video, SubmissionVideoUploader

  belongs_to :user
  belongs_to :community

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, length: { maximum: 8000 }
  validates :url, url: { allow_blank: true }
  validate :image_or_video
  validate :url_or_content

  acts_as_votable

  private

    def image_or_video
      unless submission_image.blank? || submission_video.blank?
        unless submission_image.blank? ^ submission_video.blank?
          errors.add(:base, "Add an image or video, not both")
        end
      end
    end

    def url_or_content
      unless url.blank? || body.blank?
        unless url.blank? ^ body.blank?
          errors.add(:base, "Add a valid URL or text content")
        end
      end
    end
end
