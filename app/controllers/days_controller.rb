class DaysController < ApplicationController
  def create
    day = Day.create()
  end
end
