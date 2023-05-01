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

  def eliminate

    the_id = params.fetch("delete_id")

    matching_photos = Photo.where({:Id => the_id })

    @dlt_photo = matching_photos.at(0)

    @dlt_photo.destroy
    
    #render(:template => "photos_templates/eliminate.html.erb")

    redirect_to("/photos")
  end

  def add

    i_image = params.fetch("input_image")

    i_caption = params.fetch("input_caption")

    i_ownerid = params.fetch("input_owner_id")

    a_new_photo = Photo.new
    a_new_photo.image = i_image
    a_new_photo.caption = i_caption
    a_new_photo.owner_id = i_ownerid

    a_new_photo.save







  #render(:template => "photos_templates/add.html.erb")

    redirect_to("/photos/"+ a_new_photo.id.to_s)
  end

end
