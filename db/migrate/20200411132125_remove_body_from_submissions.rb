class RemoveBodyFromSubmissions < ActiveRecord::Migration[6.0]
  def change

    remove_column :submissions, :body, :text
  end
end
