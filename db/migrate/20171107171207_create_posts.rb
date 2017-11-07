class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.text :content
      t.boolean :published
      t.string :slug
      t.string :tags

      t.timestamps
    end
  end
end
