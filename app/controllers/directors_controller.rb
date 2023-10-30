class DirectorsController < ApplictionController 
  def index 
    render({ :template => "director_templates/list"})
  end 
end 
