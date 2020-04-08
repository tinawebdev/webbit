class Community < ApplicationRecord
  before_save :format_name

  belongs_to :user
  has_many :submissions

  has_many :subscriptions
  has_many :users, through: :subscriptions

  def format_name
    # the ! after gsub modifes the attribute.
    self.name.titleize
    self.name.gsub!(' ', '')
  end
end
