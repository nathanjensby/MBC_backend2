class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: @recipes.as_json(include:[ :measurements, :items])
    # respond_to do |format|
    # format.html
    # format.json { render :json => @recipes.to_json(include: [:measurements, :items]) }
    # end
  end
  # GET /recipes/1
  def show
    render json: @recipe.as_json(include:[ :measurements, :items])
  end

  # GET /recipes/:id/items

  def items
    @items = Item.includes(:measurements).where(measurements: { recipe_id: params[:id]})

    render json: @items
  end

  # GET /recipes/:id/measurements

  def measurements
    @measurements = Measurement.where(measurements: { recipe_id: params[:id]})

    render json: @measurements
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.fetch(:recipe, {})
    end
end
