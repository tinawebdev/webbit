# Preview all emails at http://localhost:3000/rails/mailers/submission_mailer
class SubmissionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/submission_mailer/new_response
  def new_response
    SubmissionMailer.with(comment: Comment.last, submission: Submission.last).new_response
  end

end
