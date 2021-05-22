Rails.application.routes.draw do

  get("/test", { :controller => "testing", :action => "index" })


  # Routes for the Offer resource:

  # CREATE
  post("/insert_offer", { :controller => "offers", :action => "create" })
          
  # READ
  get("/offers", { :controller => "offers", :action => "index" })
  
  get("/offers/:path_id", { :controller => "offers", :action => "show" })
  
  # UPDATE
  
  post("/modify_offer/:path_id", { :controller => "offers", :action => "update" })
  
  # DELETE
  get("/delete_offer/:path_id", { :controller => "offers", :action => "destroy" })

  #------------------------------

  # Routes for the Location resource:

  # CREATE
  post("/insert_location", { :controller => "locations", :action => "create" })
          
  # READ
  get("/locations", { :controller => "locations", :action => "index" })
  
  get("/locations/:path_id", { :controller => "locations", :action => "show" })
  
  # UPDATE
  
  post("/modify_location/:path_id", { :controller => "locations", :action => "update" })
  
  # DELETE
  get("/delete_location/:path_id", { :controller => "locations", :action => "destroy" })

  #------------------------------

  # Routes for the Status event resource:

  # CREATE
  post("/insert_status_event", { :controller => "status_events", :action => "create" })
          
  # READ
  get("/status_events", { :controller => "status_events", :action => "index" })
  
  get("/status_events/:path_id", { :controller => "status_events", :action => "show" })
  
  # UPDATE
  
  post("/modify_status_event/:path_id", { :controller => "status_events", :action => "update" })
  
  # DELETE
  get("/delete_status_event/:path_id", { :controller => "status_events", :action => "destroy" })

  #------------------------------

  # Routes for the Function resource:

  # CREATE
  post("/insert_function", { :controller => "functions", :action => "create" })
          
  # READ
  get("/functions", { :controller => "functions", :action => "index" })
  
  get("/functions/:path_id", { :controller => "functions", :action => "show" })
  
  # UPDATE
  
  post("/modify_function/:path_id", { :controller => "functions", :action => "update" })
  
  # DELETE
  get("/delete_function/:path_id", { :controller => "functions", :action => "destroy" })

  #------------------------------

  # Routes for the Company resource:

  # CREATE
  post("/insert_company", { :controller => "companies", :action => "create" })
          
  # READ
  get("/companies", { :controller => "companies", :action => "index" })
  
  get("/companies/:path_id", { :controller => "companies", :action => "show" })
  
  # UPDATE
  
  post("/modify_company/:path_id", { :controller => "companies", :action => "update" })
  
  # DELETE
  get("/delete_company/:path_id", { :controller => "companies", :action => "destroy" })

  #------------------------------

  # Routes for the Application resource:

  # CREATE
  post("/insert_application", { :controller => "applications", :action => "create" })
          
  # READ
  get("/applications", { :controller => "applications", :action => "index" })
  
  get("/applications/:path_id", { :controller => "applications", :action => "show" })
  
  # UPDATE
  
  post("/modify_application/:path_id", { :controller => "applications", :action => "update" })
  
  # DELETE
  get("/delete_application/:path_id", { :controller => "applications", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
