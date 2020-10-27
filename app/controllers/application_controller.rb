class ApplicationController < ActionController::Base
  layout("application.html.erb")
  
  def homepage
    render({ :template => "misc_templates/home", :layout => "layouts/application"})
  end
  

end
