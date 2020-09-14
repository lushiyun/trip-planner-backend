class TripsController < ApplicationController
  def index
    trips = Trip.all
    options = { include: %i[days places] }
    render json: TripSerializer.new(trips, options).serialized_json
  end

  def create
    trip = Trip.new(trip_params)
    if trip.save
      options = { include: %i[days places] }
      render json: TripSerializer.new([trip], options).serialized_json
    else
      render json: { error: 'could not be created' }
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:city,
                                 :lat,
                                 :lng,
                                 days_attributes: [:date,
                                                   places_attributes: %i[name place_id category]])
  end
end