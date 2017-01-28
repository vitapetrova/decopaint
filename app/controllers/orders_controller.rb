class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    unless @order.save
      flash.now[:errors] = @order.errors.values.flatten
    end
    render 'create'
  end

  private

  def order_params
    params.require(:order).permit(
      :name_product,
      :volume,
      :price1,
      :price2,
      :painting,
      :amount,
      :name,
      :phone,
      :email,
      :address
    )
  end
end
