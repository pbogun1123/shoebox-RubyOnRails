class CreateCVideos < ActiveRecord::Migration
  def change
    create_table :c_videos do |t|
      t.integer :client_id
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
