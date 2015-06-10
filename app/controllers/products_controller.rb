class ProductsController < InheritedResources::Base
  private

    def product_params
      params.require(:product).permit(:title, :color, :description, :category_id, :price)
    end
end

