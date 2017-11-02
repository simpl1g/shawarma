class HomeController < ApplicationController
  def index
    @future_delivery = Delivery.next
    @orders = current_user.active_orders.includes(order_items: :store_item)
  end
end
