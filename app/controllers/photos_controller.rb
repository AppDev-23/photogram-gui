class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    
    @list_of_photos = matching_photos.order({:created_at => :desc})
    render(:template => "photos_templates/index.html.erb")
  end


  def show
    url_photoname = params.fetch("path_photoid")
    matching_photo= Photo.where({:Id => url_photoname })

    @the_photo = matching_photo.at(0)

    #@the_user = matching_usernames.at(0)

    #if the_user == nil <-- this is for redirecting if the results are blank
      #redirect_to("/404")
   # else
    render(:template => "photos_templates/show.html.erb")
  end
end
