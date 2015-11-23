class CreateLostfounds < ActiveRecord::Migration
  def change
    create_table :lostfounds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
