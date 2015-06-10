class CreateAdditionalDescriptions < ActiveRecord::Migration
  def change
    create_table :additional_descriptions do |t|
      t.string :title
      t.string :description
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
