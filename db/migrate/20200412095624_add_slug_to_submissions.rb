class AddSlugToSubmissions < ActiveRecord::Migration[6.0]
  def change
    add_column :submissions, :slug, :string
    add_index :submissions, :slug, unique: true
  end
end
