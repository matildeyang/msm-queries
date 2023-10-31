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

  def youngest 
    birthday_directors = Director.where.not({ :dob => nil })
    age = 0 
    youngest_director = "" 
    birthday_directors.all.each do |a_director|
      director_age = Date.today - a_director.dob
      if age > director_age
        age = age 
        youngest_director = youngest_director
      else 
        age = director_age
        youngest_director = a_director.name
      end 
    end 
    render({ :template => "director_templates/youngest"})
  end 

  def oldest 
    birthday_directors = Director.where.not({ :dob => nil })
    age = 0 
    @oldest_director = "" 
    birthday_directors.all.each do |a_director|
      director_age = Date.today - a_director.dob
      if age < director_age
        age = age 
        @oldest_director = @oldest_director
      else 
        age = director_age
        @oldest_director = a_director.name
      end 
    end 
  end 
end 
