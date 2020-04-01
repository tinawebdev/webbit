class Submission < ApplicationRecord
  mount_uploader :submission_image, SubmissionImageUploader
end
