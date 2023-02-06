class DirectorsController < ApplicationController
  
  def index
    @list_of_directors = Director.all

    render( { :template => "directors_templates/index.html.erb"})
  end

  def youngest
    @youngest = Director.order({ :dob => :desc}).at(0)
    render({ :template => "directors_templates/youngest.html.erb"})
  end

  def oldest
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc}).at(0)
    render({ :template => "directors_templates/oldest.html.erb"})
  end

  def director_details

    @dir_id = params.fetch("id_number")
    @the_director = Director.where({ :id => @dir_id })
    render({ :template => "directors_templates/show.html.erb"})
  end

end
