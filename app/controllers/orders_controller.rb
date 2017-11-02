class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :validate_delivery, only: [:new, :create]
  before_action :authenticate_user!

  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new(user: current_user, delivery: active_delivery)
    @order.order_items.build if @order.order_items.empty?
  end

  def edit
  end

  def create
    @order = Order.new(order_params.merge(user: current_user, delivery: active_delivery))

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def validate_delivery
    redirect_to(root_path, alert: 'No active delivery') && return unless active_delivery
  end

  def order_params
    params.require(:order).permit(
      :delivery_id, :user_id, :preferred_payment_method,
      order_items_attributes: [:store_item_id, :quantity, :_destroy, :id]
    )
  end
end
