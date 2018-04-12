class Admin::RestaurantsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin
  before_action :find_restaurant, only: [:edit, :update, :show, :destroy]

  def index
    @restaurants = Restaurant.page(params[:page]).per(10)
  end

  def show
  end
  
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to admin_restaurants_path, notice: "Restaurant was Successfully created!!!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to admin_restaurant_path(@restaurant), notice: "Restaurant was successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to admin_restaurants_path, alert: "Restaurant was deleted!"
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :tel, :address, :opening_hours, :description, :image)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  
end
