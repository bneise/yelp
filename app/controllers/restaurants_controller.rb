class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    render("restaurants/index.html.erb")
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    render("restaurants/show.html.erb")
  end

  def new
    @restaurant = Restaurant.new

    render("restaurants/new.html.erb")
  end

  def create
    @restaurant = Restaurant.new

    @restaurant.name = params[:name]
    @restaurant.address = params[:address]
    @restaurant.city = params[:city]
    @restaurant.neighborhood = params[:neighborhood]
    @restaurant.short_description = params[:short_description]
    @restaurant.hours = params[:hours]
    @restaurant.website = params[:website]
    @restaurant.total_ratings = params[:total_ratings]
    @restaurant.num_reviews = params[:num_reviews]

    save_status = @restaurant.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/restaurants/new", "/create_restaurant"
        redirect_to("/restaurants")
      else
        redirect_back(:fallback_location => "/", :notice => "Restaurant created successfully.")
      end
    else
      render("restaurants/new.html.erb")
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])

    render("restaurants/edit.html.erb")
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.name = params[:name]
    @restaurant.address = params[:address]
    @restaurant.city = params[:city]
    @restaurant.neighborhood = params[:neighborhood]
    @restaurant.short_description = params[:short_description]
    @restaurant.hours = params[:hours]
    @restaurant.website = params[:website]
    @restaurant.total_ratings = params[:total_ratings]
    @restaurant.num_reviews = params[:num_reviews]

    save_status = @restaurant.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/restaurants/#{@restaurant.id}/edit", "/update_restaurant"
        redirect_to("/restaurants/#{@restaurant.id}", :notice => "Restaurant updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Restaurant updated successfully.")
      end
    else
      render("restaurants/edit.html.erb")
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy

    if URI(request.referer).path == "/restaurants/#{@restaurant.id}"
      redirect_to("/", :notice => "Restaurant deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Restaurant deleted.")
    end
  end
end
