Rails.application.routes.draw do
  #BANKS

  # CREATE
  post("/insert_movie", { :controller => "movies", :action => "create" })

  #READ:
  get("/banks", { :controller => "banks", :action => "index" })
  
  get("/banks/:path_id", { :controller => "banks", :action => "show" })

  # UPDATE
  
  post("/modify_bank/:path_id", { :controller => "banks", :action => "update" })
  
  # DELETE
  get("/delete_bank/:path_id", { :controller => "banks", :action => "destroy" })

  #------------------------------

  get("/contacts", { :controller => "contacts", :action => "index" })

  get("/programs", { :controller => "programs", :action => "index" })

end
