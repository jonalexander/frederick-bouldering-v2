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
    @main_area = MainArea.find(params[:id])
    @main_areas = MainArea.all
  end

  def update

  end

  def destroy

  end

  private

  def main_area_params
    params.require(:main_area).permit(:name, :description, :access)
  end
end
