Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})
  get("/movies", { :controller => "movies", :action => "index"})
  get("/actors", { :controller => "actors", :action => "index"})
  get("/directors/youngest", { :controller => "directors", :action => "youngest"})
  get("/directors/eldest", { :controller => "directors", :action => "oldest"})
  get("/directors/:id_number", { :controller => "directors", :action => "director_details"})

end
