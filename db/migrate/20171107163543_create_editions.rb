class CreateEditions < ActiveRecord::Migration[5.1]
  def change
    create_table :editions do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :slug
      t.string :tags

      t.timestamps
    end
  end
end
