class Trip < ApplicationRecord
  has_many :days
  accepts_nested_attributes_for :days, reject_if: :all_blank
end
