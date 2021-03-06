class ThermometersController < ApplicationController
   before_action :set_thermometer, only: [  :show, :edit, :update, :destroy]

  def temp
     # @thermometer = Thermometer.new.make_temp.to_json
      @thermometer= Thermometer.find(1)
      @thermometer.make_temp.to_json
     # you have to tell it where to render redirect etc since its your own custom action not using rails convention
      render :show
  end

  # GET /thermometers/1
  # GET /thermometers/1.json
  def show
      @thermometer.make_temp.to_json
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thermometer
      @thermometer = Thermometer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thermometer_params
      params.require(:thermometer).permit(:temp)
    end
end
