require 'pry'

class BproblemsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @main_areas = MainArea.all
    @bproblems = Bproblem.all
  end

  def show
    @bproblem = Bproblem.find(params[:id])
    @sub_area = @bproblem.sub_area
    @main_area = @sub_area.main_area

    # all boulder problems of same grade across all areas (without self)
    @bproblems_same_grade = Bproblem.where(grade: @bproblem.grade).where.not(id: @bproblem.id)

    # all other boulder problems in sub_area (without self)
    @sub_area_problems = Bproblem.where(sub_area_id: @sub_area.id).where.not(id: @bproblem.id)


  end

  def new
    @bproblem = Bproblem.new
    @image = @bproblem.images.build

    # for sub_area form dropdown
    @sub_area_id = params["sub_area_id"]
  end

  def edit
  end

  def create
    binding.pry
    @bproblem = Bproblem.new(name: bproblem_params[:name], grade: bproblem_params[:grade], description: bproblem_params[:description])
    @sub_area = SubArea.find(bproblem_params[:sub_area_id])
    @image = Image.new(source: image_params)

    binding.pry
    if @bproblem.save
      @sub_area.bproblems << @bproblem
      @bproblem.images << @image
      current_user.images << @image
      redirect_to(@problem)
    else
      render "new"
    end

    binding.pry
    # response_to do |format|
    #     if @bproblem.save
    #       format.html { redirect_to @bproblem, notice: 'Problem was created.'}
    #       format.json { render :show, status: :created, location: @bproblem}
    #     else
    #       format.html { render :new }
    #       format.json { render json: @bproblem.errors, status: :unprocessable_entity }
    #     end
    # end
  end

  def update
    respond_to do |format|
      if @bproblem.update(bproblem_params)
        format.html { redirect_to @bproblem, notice: 'Problem was successfully updated.' }
        format.json { render :show, status: :ok, location: @bproblem }
      else
        format.html { render :edit }
        format.json { render json: @bproblem.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bproblem.destroy

    respond_to do |format|
      format.html { redirect_to bproblems_url, notice: 'Problem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_bproblem
    @bproblem = Bproblem.find(params[:id])
  end

  def bproblem_params
    #params will change depending on how form is structured
    params.require(:bproblem).permit(:name, :description, :grade, :sub_area_id, :first_ascent_id)
  end

  def image_params
    params.require(:image)
  end

end


# index
# GET /bproblems
# GET /bproblems.json

# show
# GET /bproblems/1
# GET /bproblems/1.json
