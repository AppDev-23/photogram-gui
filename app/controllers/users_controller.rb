class UsersController < ApplicationController
  def index
    matching_users = User.all
    
    @list_of_users = matching_users.order({:username => :asc})
    render(:template => "user_templates/index.html.erb")
  end


  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({:username => url_username })

    @the_user = matching_usernames.at(0)

    #if the_user == nil <-- this is for redirecting if the results are blank
      #redirect_to("/404")
   # else
    render(:template => "user_templates/show.html.erb")
  end

  def add

    i_user = params.fetch("input_username")

    a_new_user = User.new
    a_new_user.username = i_user


    a_new_user.save


  #render(:template => "photos_templates/add.html.erb")

    redirect_to("/users/"+  a_new_user.username)
  end
end
