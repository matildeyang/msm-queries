Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
# index as action name is used for displaying lists 
  get("/directors", { :controller => "directors", :action =."index"})
end
