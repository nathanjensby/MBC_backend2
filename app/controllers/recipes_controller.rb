class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    respond_to do |format|
    format.json { render json: @recipes.to_json(:include => :measurements) }
    end
  end
  # GET /recipes/1
  def show
    render json: @recipe
  end

  # GET /recipes/:id/items

  def items
    @items = Item.includes(:measurements).where(measurements: { recipe_id: params[:id].split(',') })

    render json: @items
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
