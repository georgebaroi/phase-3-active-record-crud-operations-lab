class Movie < ActiveRecord::Base
    #creates a movie instance when given a title and saves to the database (CREATE)
    def self.create_with_title(title)
        Movie.create(title: title)
    end
    
    #returns the first movie from list (READ)
    def self.first_movie
        Movie.first
    end

    #returns the last movie from the list (READ)
    def self.last_movie
        Movie.last 
    end

    #returns the movie count from database (READ)
    def self.movie_count
        Movie.count 
    end

    #given the id of a movie, finds that movie (READ)
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    #finds movie when given the attributes, uses the find by method (READ)
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    #finds all movies released after 2002, uses the where method (READ)
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    #Updates a single movie when given the attributes uses the update method (UPDATE)
    #here we are using an instance method 
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    #Updates the titles of all the records at once (UPDATE)
    #here we are using the class method 
    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    #deletes a movie when given its ID (DELETE)
    def self.delete_by_id(id)
        movie = Movie.find(id)
        movie.destroy
    end

    #deletes all movies in the database (DELETE)
    def self.delete_all_movies
        Movie.destroy_all
    end






end