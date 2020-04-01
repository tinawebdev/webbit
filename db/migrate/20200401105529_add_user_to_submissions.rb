class AddUserToSubmissions < ActiveRecord::Migration[6.0]
  def change
    add_reference :submissions, :user, foreign_key: true
  end
end
