class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :C_FName
      t.string :C_LName
      t.string :C_Email
      t.text :C_Summary

      t.timestamps
    end
  end
end
