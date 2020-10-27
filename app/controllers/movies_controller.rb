class MoviesController < ActionController::Base
  layout("application.html.erb")
  
  def index
    @movies = Movie.all
    render({ :template => "movie_templates/index.html.erb"})
  end

  

  def movDetails
    movId = params.fetch("idNumber")

    @curMove = Movie.where({:id => movId}).first

    dirId = @curMove.director_id
    @curDir = Director.where({:id => dirId}).first


    render({ :template => "movie_templates/movDetail.html.erb"})

  end

end
