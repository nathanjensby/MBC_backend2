class MeasurementsController < ApplicationController
  before_action :set_measurement, only: [:show, :update, :destroy]

  # GET /measurements
  def index
    @measurements = Measurement.all

    render json: @measurements
  end

  # GET /measurements/1
  def show
    render json: @measurement
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement
      @measurement = Measurement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def measurement_params
      params.fetch(:measurement, {})
    end
end
