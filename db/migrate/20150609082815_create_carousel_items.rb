class CreateCarouselItems < ActiveRecord::Migration
  def change
    create_table :carousel_items do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
