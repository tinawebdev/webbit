class AddUserRefToCommunities < ActiveRecord::Migration[6.0]
  def change
    add_reference :communities, :user, foreign_key: true
  end
end
