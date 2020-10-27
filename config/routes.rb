Rails.application.routes.draw do
  
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })

  get("/directors/:idNumber", { :controller => "directors", :action => "dirDetails" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:idNumber", { :controller => "movies", :action => "movDetails" })

end
