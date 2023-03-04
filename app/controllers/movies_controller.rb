class MoviesController < DirectorsController 

  def film
    @list_of_movies = Movie.all
    render({ :template => "director_templates/film.html.erb"})
  end

  def movie_details 
    the_film_id = params.fetch("movie_id")
    @the_movie = Movie.where({ :id => the_film_id }).at(0)
    render({ :template => "director_templates/show_film.html.erb"})
  end

end
