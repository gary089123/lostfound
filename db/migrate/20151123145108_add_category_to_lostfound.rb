class AddCategoryToLostfound < ActiveRecord::Migration
  def  change
  	add_column :lostfounds ,:category ,:string
  end
end
