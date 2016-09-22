require 'pry'

class PhotosController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  before_action :set_bproblem

  def index

  end

  def create
    add_more_photos(params[:bproblem][:photos])
    redirect_to :back
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

  private

  def set_bproblem
    @bproblem = Bproblem.find(params[:bproblem_id])
  end

  def add_more_photos(new_photos)
    photos = @bproblem.photos
    photos += new_photos
    @bproblem.photos = photos
    @bproblem.save!
  end
end
