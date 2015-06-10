class CategoriesController < InheritedResources::Base
  def index
    @categories = Category.all
    @carousel_items = CarouselItem.all.order(created_at: :desc)
    @products = Product.order(created_at: :desc).first(8)
  end

  def show
    @category = Category.find(params[:id])
  end

  private

    def category_params
      params.require(:category).permit(:title, :body)
    end
end

