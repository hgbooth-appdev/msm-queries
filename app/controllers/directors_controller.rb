class DirectorsController < ActionController::Base
  layout("application.html.erb")
  
  def index
    @directors = Director.all
    render({ :template => "director_templates/index.html.erb"})
  end


end
