class OrdersController < InheritedResources::Base
  def new
    if @cart.total_quantity == 0
      redirect_to root_path
    else
      @order = Order.new
    end
  end

  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        @order.add_item_from_cart(@cart)
        format.html { redirect_to root_path, notice: 'Спасибо за покупку, мы вам позвоним!' }
      else
        format.html { render :new }
      end
    end
  end

  def cart_rerender
    respond_to :js
  end

  private

    def order_params
      params.require(:order).permit(:name, :city, :address, :phone)
    end
end

