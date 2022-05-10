class AddPhotoToDentists < ActiveRecord::Migration[6.1]
  def change
    add_column :dentists, :photo, :string
  end
end
