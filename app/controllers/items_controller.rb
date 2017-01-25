class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    @items = Item.all.order(:name)

    render json: @items
  end

  # GET /items/1
  def show
    render json: @item
  end

# GET /items/:id/recipes

  def recipes
    # @recipes = Recipe.includes(:measurements).where(measurements: { item_id: params[:id].split(',') })

    @recipes = Recipe.joins(:measurements).where(measurements: {item_id: params[:id].split(',')}).group('recipes.id').having('count(item_id) > 2')

    render json: @recipes
    # respond_to do |format|
    # format.json { render json: @recipes.to_json(:include => :measurements) }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.fetch(:item, {})
    end
end
