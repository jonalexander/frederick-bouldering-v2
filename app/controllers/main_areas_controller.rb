class MainAreasController < ApplicationController
  def index
    @main_areas = MainArea.all.sort_by { |main_area| main_area.name.downcase }
    # need to round up the details for each main area
  end

  def create

  end

  def new

  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end
end
