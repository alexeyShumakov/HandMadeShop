class ProductsController < InheritedResources::Base
  before_action :set_categories, only: :search
  before_action :set_keyword, only: :search
  def search
    if @keyword.blank? || (@keyword.length < 3)
      @products = Product.all.page(params[:page])
    else
      @products = Product.search_by_title(@keyword).page(params[:page])
    end
  end
  private
    def set_keyword
      @keyword = params[:search]
    end
    def set_categories
      @categories = Category.all
    end
    def product_params
      params.require(:product).permit(:title, :color, :description, :category_id, :price)
    end
end

