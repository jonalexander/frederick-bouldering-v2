require 'pry'

class MainAreasController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

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
    @map_url = 'https://www.google.com/maps/d/embed?mid=1RpIFK2KC2O_sh2gqG1_PrnbdVmM&zoom=20'

    # refactor into efficient ActiveRecord query
    # bproblems = @main_area.bproblems
    # @fas = bproblems.map { |problem| problem.first_ascent }
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
