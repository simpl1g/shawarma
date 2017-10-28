class HomeController < ApplicationController
  def index
    @active_delivery = Delivery.where("start_at < now() and close_at > now()").first
    @future_delivery = Delivery.where("start_at >= now()").first
  end
end
