class AddCommentSubscriptionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :comment_subscription, :boolean, default: true
  end
end
