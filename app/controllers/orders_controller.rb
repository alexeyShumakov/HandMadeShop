class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:city, :address, :phone, :product_price, :delivery_price, :status)
    end
end

