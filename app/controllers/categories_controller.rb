class CategoriesController < InheritedResources::Base
  before_action :set_categories
  def index
    @carousel_items = CarouselItem.all.order(created_at: :desc)
    @products = Product.order(created_at: :desc).first(8)
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc).page(params[:page])
  end

  private
    def set_categories
      @categories = Category.all
    end
    def category_params
      params.require(:category).permit(:title, :body)
    end
end

