class AddPhotoToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :photo, :string
  end
end
