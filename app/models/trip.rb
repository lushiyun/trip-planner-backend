class Trip < ApplicationRecord
  has_many :days
  has_many :places, through: :days
  accepts_nested_attributes_for :days, reject_if: :all_blank
end
