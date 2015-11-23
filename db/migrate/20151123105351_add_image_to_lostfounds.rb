class AddImageToLostfounds < ActiveRecord::Migration
  def change
  	add_column :lostfounds , :image , :string
  end
end
