class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date
  has_many :places
  belongs_to :trip
end
