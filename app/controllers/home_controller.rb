class HomeController < ApplicationController
  def index
    @future_delivery = Delivery.next
    @orders = user_signed_in? ? current_user.active_orders.includes(order_items: :store_item) : Order.none
  end
end
