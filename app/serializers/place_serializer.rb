class PlaceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :place_id, :category
  belongs_to :day
end
