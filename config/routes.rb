Rails.application.routes.draw do

  get("/",{:controller => "users", :action => "index"})

  get("/users",{:controller => "users", :action => "index"})

  get("/users/:path_username",{:controller => "users", :action => "show"})

  get("/photos",{:controller => "photos", :action => "index"})

  get("/photos/:path_photoid",{:controller => "photos", :action => "show"})

  get("/delete_photo/:delete_id",{:controller => "photos", :action => "eliminate"})

  get("/insert_photo_record", {:controller => "photos", :action => "add"})

  get("/insert_user_record", {:controller => "users", :action => "add"})

  get("/insert_comment_record", {:controller => "photos", :action => "add_comment"})

  get("/update_photo/:mod_photoid", {:controller => "photos", :action => "update"})
end
