class DirectorsController < ActionController::Base
  layout("application.html.erb")
  
  def index
    @directors = Director.all
    render({ :template => "director_templates/index.html.erb"})
  end

  def eldest
    ordered = Director.all.order(:dob)

    eldest = ordered.where.not({ :dob => nil }).first

    @resId = eldest.id
    @resName = eldest.name
    @resDob = eldest.dob


    render({ :template => "director_templates/eldest.html.erb"})
  end
  
  def youngest
    ordered = Director.all.order({:dob => :desc})

    youngest = ordered.where.not({ :dob => nil }).first

    @resId = youngest.id
    @resName = youngest.name
    @resDob = youngest.dob


    render({ :template => "director_templates/youngest.html.erb"})
  end

  def dirDetails
    dirId = params.fetch("idNumber")

    @curDir = Director.where({:id => dirId}).first
    @curMov = Movie.where({:director_id => dirId})


    render({ :template => "director_templates/details.html.erb"})

  end

end
