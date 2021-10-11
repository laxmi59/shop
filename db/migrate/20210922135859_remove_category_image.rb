class RemoveCategoryImage < ActiveRecord::Migration[5.2]
  def change
    if foreign_key_exists?(:categories, :image)
     remove_foreign_key :categories, :image
     remove_column :categories, :image
   end
  end
end
