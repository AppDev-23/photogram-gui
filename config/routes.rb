Rails.application.routes.draw do

  get("/",{:controller => "users", :action => "index"})

  get("/users",{:controller => "users", :action => "index"})

  get("/users/:path_username",{:controller => "users", :action => "show"})

  get("/photos",{:controller => "photos", :action => "index"})

  get("/photos/:path_photoid",{:controller => "photos", :action => "show"})

  get("/delete_photo/:delete_id",{:controller => "photos", :action => "eliminate"})
end
