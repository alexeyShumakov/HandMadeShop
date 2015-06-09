class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :color
      t.text :description
      t.references :category, index: true, foreign_key: true
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
