class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.text :description
      t.string :imagepath
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
