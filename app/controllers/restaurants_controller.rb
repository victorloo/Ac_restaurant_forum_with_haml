class RestaurantsController < ApplicationController
  before_action :find_restaurant, except: [:index, :feeds, :ranking]
  
  def index
    @restaurants = Restaurant.page(params[:page]).per(9)
    @categories = Category.all
  end

  def show
    @comment = Comment.new
  end

  def feeds
    @recent_restaurants = Restaurant.all.order(created_at: :desc).limit(10)
    @recent_comments = Comment.all.order(created_at: :desc).limit(10)
  end
  
  def dashboard
  end
  
  def favorite
    @restaurant.favorites.create!(user: current_user)
    
    redirect_back(fallback_location: root_path)
  end

  def unfavorite
    favorites = Favorite.where(restaurant: @restaurant, user: current_user)
    favorites.destroy_all
    
    redirect_back(fallback_location: root_path)
  end

  def like
    current_user.likes.create!(restaurant: @restaurant)

    redirect_back(fallback_location: root_path)
  end

  def unlike
    like = Like.where(restaurant: @restaurant, user: current_user)
    like.destroy_all

    redirect_back(fallback_location: root_path)
  end

  def ranking
    @restaurants = Restaurant.order(favorites_count: :desc).limit(10)
  end
  
  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
