class ActorsController < MoviesController 

  def actor
    @list_of_actors = Actor.all
    render({ :template => "director_templates/actor.html.erb"})
  end

  def actor_details 
    actor_id = params.fetch("actor_id")
    @the_actor = Actor.where({ :id => actor_id }).at(0)
    #@filmography = Movie.where({ :director_id => @the_actor.id})
    @character = Character.where({ :actor_id => actor_id})
    render({ :template => "director_templates/show_actor.html.erb"})
  end

end
