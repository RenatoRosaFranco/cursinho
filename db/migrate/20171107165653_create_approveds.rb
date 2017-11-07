class CreateApproveds < ActiveRecord::Migration[5.1]
  def change
    create_table :approveds do |t|
      t.string :avatar
      t.string :name
      t.text :description
      t.text :university
      t.string :slug
      t.string :tag
      t.references :edition, foreign_key: true

      t.timestamps
    end
  end
end
