class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update]
  
  def index
    @cocktails = Cocktail.all
  end
  def new 
    @cocktail = Cocktail.new
  end
  def show
    @cocktail = Cocktail.find(params[:id])
  end
  def edit
    # ...
  end
  def create
    # cocktail to create from DB
    @cocktail = Cocktail.new(cocktail_params)
    # save record
    if @cocktail.save
     # redirect to cocktail
     redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end
  def update
    # fetch cocktail to update from DB
    @cocktail = Cocktail.find(params[:id])
    # update record
    @cocktail.update(cocktail_params)
    # redirect to restaurant
    redirect_to cocktail_path(cocktail)
  end
  def destroy
    # fetch restaurant to destroy from DB
    @cocktail = Cocktail.find(params[:id])
    # destroy record
    @cocktail.destroy
    # redirect to index
    redirect_to cocktails_path
  end

private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

