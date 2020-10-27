class ActorsController < ActionController::Base
  layout("application.html.erb")
  
  def index
    @actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

  

  def actDetails
    movId = params.fetch("idNumber")

    @curMove = Movie.where({:id => movId}).first

    dirId = @curMove.director_id
    @curDir = Director.where({:id => dirId}).first


    render({ :template => "actor_templates/actDetail.html.erb"})

  end

end
