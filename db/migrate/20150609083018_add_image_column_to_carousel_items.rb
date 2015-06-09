class AddImageColumnToCarouselItems < ActiveRecord::Migration
  def up
    add_attachment :carousel_items, :image
  end

  def down
    remove_attachment :carousel_items, :image
  end
end
