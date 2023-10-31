Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
# index as action name is used for displaying lists 
  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/:the_id", { :controller => "directors", :action => "show"})

  get("/movies", { :controller => "movies", :action => "index"})

  get("/movies/:the_id", { :controller => "movies", :action => "show"})
end
