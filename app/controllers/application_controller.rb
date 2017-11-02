class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def active_delivery
    @active_delivery ||= Delivery.active
  end
  helper_method :active_delivery
end
