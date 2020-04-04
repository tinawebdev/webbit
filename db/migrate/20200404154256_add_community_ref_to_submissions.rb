class AddCommunityRefToSubmissions < ActiveRecord::Migration[6.0]
  def change
    add_reference :submissions, :community, foreign_key: true
  end
end
