class BproblemsController < ApplicationController
  before_action :set_bproblem, only: [:show, :edit, :update, :destroy]

  def index
    @bproblems = Bproblem.all
  end

  def show
  end

  def new
    @bproblem = Bproblem.new
  end

  def edit
  end

  def create
    @bproblem = Bproblem.new(bproblem_params)

    response_to do |format|
        if @bproblem.save
          format.html { redirect_to @bproblem, notice: 'Problem was created.'}
          format.json { render :show, status: :created, location: @bproblem}
        else
          format.html { render :new }
          format.json { render json: @bproblem.errors, status: :unprocessable_entity }
        end
    end
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
    params.require(:bproblem).permit(:name, :grade, :sub_area_id, :first_ascent_id)
  end

end


# index
# GET /bproblems
# GET /bproblems.json

# show
# GET /bproblems/1
# GET /bproblems/1.json
