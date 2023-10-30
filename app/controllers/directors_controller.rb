class DirectorsController < ApplicationController 
  def index 
    render({ :template => "director_templates/list"})
  end 

  def show 
   the_id = params.fetch("the_id")

   # use this to retrieve existing data 
   matching_records  = Director.where({ :id => the_id })
   @the_director = matching_records.at(0)
   render({ :template => "director_templates/details"})
  end 
end 
