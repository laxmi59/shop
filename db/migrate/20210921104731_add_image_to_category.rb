class AddImageToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :image, :blob
  end
end
