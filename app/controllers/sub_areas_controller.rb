require 'pry'

class SubAreasController < ApplicationController
  def index
    @sub_areas = SubArea.all
  end

  def create
    @sub_area = SubArea.new(name: sub_area_params[:name], description: sub_area_params[:description])
    @main_area = MainArea.find(sub_area_params[:main_area_id])

    if @sub_area.save
      @main_area.sub_areas << @sub_area
      redirect_to(@sub_area)
    else
      render "edit"
    end

  end

  def new
    @sub_area = SubArea.new

    # use main_area_id to set default collection select in form
    @main_area_id = params["main_area_id"]
  end

  def edit

  end

  def show
    @sub_area = SubArea.find(params[:id])
    @main_area = @sub_area.main_area
    @bproblems_extended = (@sub_area.bproblems ? @sub_area.bproblems.map { |bproblem| return "#{bproblem.name} #{bproblem.grade}"} : [])
    @sub_areas_sans_self = SubArea.all.select { |sub_area| sub_area.id != @sub_area.id}
  end

  def update
    @sub_area.update(sub_area_params)
  end

  def destroy

  end

  private

  def sub_area_params
    params.require(:sub_area).permit(:name, :description, :main_area_id)
  end
end
