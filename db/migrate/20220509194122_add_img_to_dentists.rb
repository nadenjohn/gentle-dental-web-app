class AddImgToDentists < ActiveRecord::Migration[6.1]
  def change
    add_column :dentists, :img, :string
  end
end
