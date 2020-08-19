class TripsController < ApplicationController

  private

  def trip_params
    params.require(:trip).permit(:city, :lat, :lng,
      :days_attributes => [:date, 
        :places_attributes => [:name, :place_id, :category]])
  end
end
