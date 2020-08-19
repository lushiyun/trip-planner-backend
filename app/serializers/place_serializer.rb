class PlaceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :place_id
  belongs_to :day
end
