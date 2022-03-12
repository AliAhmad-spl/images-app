class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    Image.create(permitted_params)
    redirect_to images_path
  end

  private 
  def permitted_params
    params.require(:image).permit!
  end
end
