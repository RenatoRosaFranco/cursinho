class CreateEditals < ActiveRecord::Migration[5.1]
  def change
    create_table :editals do |t|
      t.string :name
      t.string :description
      t.string :file
      t.string :slug
      t.string :tags
      t.references :edition, foreign_key: true

      t.timestamps
    end
  end
end
