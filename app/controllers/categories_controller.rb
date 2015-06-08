class CategoriesController < InheritedResources::Base
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private

    def category_params
      params.require(:category).permit(:title, :body)
    end
end

