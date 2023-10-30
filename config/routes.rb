Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
# index as action name is used for displaying lists 
  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/:the_id", { :controller => "directors", :action => "show"})
end
