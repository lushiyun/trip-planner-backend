class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :city, :lat, :lng
  has_many :days
  has_many :places, through: :days
end
