class DishesController < ApplicationController
  before_action :set_dish, only: %i[ show edit update destroy ]

  def index
    @dishes = Dish.all
  end

  def show 
  end

  def new
    @dish = Dish.new
  end

  def edit
  end

  def create
    @dish = Dish.new(dish_params)
    respond_to do |format|
      if @dish.save
        format.json {head :no_content}
        format.js
      else
        debugger
        format.json { render json: @dish.errors.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @dish.update(dish_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @dish.errors.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end
    end
  end

  def destroy
    @dish.destroy
    respond_to do |format|
      format.json { head :no_content }
      format.js
    end
  end

  def buscador
    @resultados = Dish.buscador(params[:termino]).map do |dish|
      {
        id: dish.id,
        name_dish: dish.name,
        existence: dish.existence
      }
    end

    respond_to do |format|
      format.json { render :json => @resultados }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dish_params
      params.require(:dish).permit(:name, :description, :existence, :price, :picture)
    end
end
