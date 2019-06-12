Rails.application.routes.draw do
  # Routes for the Note resource:

  # CREATE
  match("/new_note_form", { :controller => "notes", :action => "blank_form", :via => "get" })
  match("/insert_note_record", { :controller => "notes", :action => "save_new_info", :via => "post" })

  # READ
  match("/notes", { :controller => "notes", :action => "list", :via => "get" })
  match("/notes/:id_to_display", { :controller => "notes", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_note_form/:id_to_prefill", { :controller => "notes", :action => "prefilled_form", :via => "get" })
  match("/update_note_record/:id_to_modify", { :controller => "notes", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_note/:id_to_remove", { :controller => "notes", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Status resource:

  # CREATE
  match("/new_status_form", { :controller => "statuses", :action => "blank_form", :via => "get" })
  match("/insert_status_record", { :controller => "statuses", :action => "save_new_info", :via => "post" })

  # READ
  match("/statuses", { :controller => "statuses", :action => "list", :via => "get" })
  match("/statuses/:id_to_display", { :controller => "statuses", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_status_form/:id_to_prefill", { :controller => "statuses", :action => "prefilled_form", :via => "get" })
  match("/update_status_record/:id_to_modify", { :controller => "statuses", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_status/:id_to_remove", { :controller => "statuses", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Input resource:

  # CREATE
  match("/new_input_form", { :controller => "inputs", :action => "blank_form", :via => "get" })
  match("/insert_input_record", { :controller => "inputs", :action => "save_new_info", :via => "post" })

  # READ
  match("/inputs", { :controller => "inputs", :action => "list", :via => "get" })
  match("/inputs/:id_to_display", { :controller => "inputs", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_input_form/:id_to_prefill", { :controller => "inputs", :action => "prefilled_form", :via => "get" })
  match("/update_input_record/:id_to_modify", { :controller => "inputs", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_input/:id_to_remove", { :controller => "inputs", :action => "remove_row", :via => "get" })

  #------------------------------

  # Other Routes:
  match("/customers", { :controller => "inputs", :action => "customers", :via => "get" })
  match("/financials", { :controller => "inputs", :action => "financials", :via => "get" })
  match("/processes", { :controller => "inputs", :action => "processes", :via => "get" })
  match("/educationinnovation", { :controller => "inputs", :action => "educationinnovation", :via => "get" })

  
  #------------------------------
  
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
