class AddColumnsToLostfound < ActiveRecord::Migration
  def change
  	add_column :lostfounds ,:detail , :string
  	add_column :lostfounds ,:time , :timestamp
  end
end
