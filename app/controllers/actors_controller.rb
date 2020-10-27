class ActorsController < ActionController::Base
  layout("application.html.erb")
  
  def index
    @actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

  

  def actDetails
    actId = params.fetch("idNumber")

    @curAct = Actor.where({:id => actId}).first
    
    @chars = Character.where({:actor_id => actId})

    # movies = []

    # chars.each do |c|
    #   movies.append(c.movie_id)

    # end

    # @movs = Movie.where({:id => movies})

    render({ :template => "actor_templates/actDetail.html.erb"})

  end

end
