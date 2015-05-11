class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @individualphoto = Photo.find(params["id"])
  end

  def new_form

  end

  def create_row

    t = Photo.new
    t.source = params["the_source"]
    t.caption = params["the_caption"]
    t.save

    redirect_to("http://localhost:3000/photos")
  end



end
