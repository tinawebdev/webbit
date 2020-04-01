class AddSubmissionImageToSubmissions < ActiveRecord::Migration[6.0]
  def change
    add_column :submissions, :submission_image, :string
  end
end
