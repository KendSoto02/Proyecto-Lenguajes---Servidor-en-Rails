class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :update, :destroy, :show]
  before_action :set_clients, only: [:new, :edit, :create]
  before_action :set_dishes, only: [:new, :edit, :create]
  
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

    respond_to do |format|
      if @order.save
        format.json {head :no_content}
        format.js
      else
        debugger
        format.json { render json: @order.errors.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @order.errors.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.json { head :no_content }
      format.js
    end
  end

  def buscador
    @resultados = Order.buscador(params[:termino]).map do |order|
      {
        id: order.id,
        date: order.date
      }
    end

    respond_to do |format|
      format.json { render :json => @resultados }
    end
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
