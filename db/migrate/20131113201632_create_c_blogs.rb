class CreateCBlogs < ActiveRecord::Migration
  def change
    create_table :c_blogs do |t|
      t.integer :client_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
