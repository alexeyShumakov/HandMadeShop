class LineItemsController < InheritedResources::Base

  before_action :set_line_item, only: [:destroy, :update]
  def index
    respond_to do |format|
      format.js
    end
  end
  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product.id)
    respond_to do |format|
      if @line_item.save
        format.js
        format.html {redirect_to cart_path}
      else
        format.js
        format.html
      end
    end
  end

  def destroy
    if @line_item.cart == @cart
       @line_item.destroy
    end
      respond_to do |format|
        format.js
        format.html { redirect_to cart_path}
        format.json { head :no_content }
      end
  end

  def update
    if @line_item.cart == @cart
      respond_to do |format|
        if @line_item.update(line_item_params)
          format.js
        else
          format.js {render nothing: true}
        end
      end
    else
    end
  end

  private
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end
    def line_item_params
      params.require(:line_item).permit(:product_id, :cart_id, :quantity, :color)
    end
end
