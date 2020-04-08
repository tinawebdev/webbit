class Community < ApplicationRecord
  before_save :format_name

  belongs_to :user
  has_many :submissions

  def format_name
    # the ! after gsub modifes the attribute.
    self.name.titleize
    self.name.gsub!(' ', '')
  end
end
