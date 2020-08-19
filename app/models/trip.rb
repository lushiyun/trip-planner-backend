class Trip < ApplicationRecord
  has_many :days
  has_many :places, through: :days
end
