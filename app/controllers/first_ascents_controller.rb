class FirstAscentsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  # before_action :set_first_ascent, only: [:show, :edit, :update, :destroy]
  #
  # def index
  #   @first_ascents = FirstAscent.all
  # end
  #
  # def show
  # end
  #
  # def new
  #   @first_ascent = FirstAscent.new
  # end
  #
  # def edit
  # end
  #
  # def create
  #   @first_ascent = FirstAscent.new(first_ascent_params)
  #
  #   response_to do |format|
  #       if @first_ascent.save
  #         format.html { redirect_to @first_ascent, notice: 'Problem was created.'}
  #         format.json { render :show, status: :created, location: @first_ascent}
  #       else
  #         format.html { render :new }
  #         format.json { render json: @first_ascent.errors, status: :unprocessable_entity }
  #       end
  #   end
  # end
  #
  # def update
  #   respond_to do |format|
  #     if @first_ascent.update(first_ascent_params)
  #       format.html { redirect_to @first_ascent, notice: 'Problem was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @first_ascent }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @first_ascent.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # def destroy
  #   @first_ascent.destroy
  #
  #   respond_to do |format|
  #     format.html { redirect_to first_ascents_url, notice: 'Problem was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  # private
  #
  # def set_first_ascent
  #   @first_ascent = first_ascent.find(params[:id])
  # end
  #
  # def first_ascent_params
  #   #params will change depending on how form is structured
  #   params.require(:first_ascent).permit(:name, :grade, :sub_area_id, :first_ascent_id)
  # end

end


# index
# GET /first_ascents
# GET /first_ascents.json

# show
# GET /first_ascents/1
# GET /first_ascents/1.json
