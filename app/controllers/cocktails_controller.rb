class CocktailsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :search, :show]

  def index
    @cocktails = Cocktail.all
  end

  def search
    @cocktail = Cocktail.where('title LIKE ?', "%#{params[:query]}%")
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.user = current_user
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:title, :description, :photo)
  end
end
