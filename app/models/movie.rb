class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  class Movie::NoDirectorInfo < StandardError; end

  def slef.find_smae_director(id)
    movie = seflf.find(id)
    director = movie.respond_to?('director') ? movie.director : ''
    if director and !director.empty?
      self.find_all_by_director(director)
    else
      raise Movie::NoDirectorInfo
    end
  end

end
