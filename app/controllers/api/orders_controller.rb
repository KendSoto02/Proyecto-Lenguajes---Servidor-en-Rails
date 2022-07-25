module Api
class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_order, only: [:edit, :update, :destroy, :show]
  before_action :set_clients
  before_action :set_dishes
  
  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

      if @order.save
        render 'api/orders/show', status: :created
      else
        render json: @order.errors.full_messages, status: :unprocessable_entity 
      end
    end

  def update
      if @order.update(order_params)
        render 'api/orders/show', status: :created
      else
        render json: @order.errors.full_messages, status: :unprocessable_entity 
      end
  end

  def destroy
    @order.destroy
    render 'api/orders/show', status: :created
  end


  private
    def order_params
      params.require(:order).permit(:statusOrder, :date, :quantity, :client_id, :dish_id)
    end
    def set_order
      @order = Order.find(params[:id])
    end

    def set_clients
      @clients = Client.all
    end

    def set_dishes
      @dishes = Dish.all
    end
    
end
end