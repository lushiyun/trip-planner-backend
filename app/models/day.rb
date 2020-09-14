class Day < ApplicationRecord
  belongs_to :trip
  has_many :places, dependent: :destroy
  accepts_nested_attributes_for :places, reject_if: :all_blank
end
