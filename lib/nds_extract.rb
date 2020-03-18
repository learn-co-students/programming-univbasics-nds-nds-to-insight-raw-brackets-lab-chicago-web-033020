$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  #grand_total = 0
  #row_index = 0
  new_hash = {}
  #while row_index < nds.length do
    #movies_index = 0
    #while movies_index < nds[row_index][:movies].length do

      #movie_gross = nds[row_index][:movies][movies_index][:worldwide_gross]
      #if new_hash.has_key?(nds[row_index][:name])
        #new_hash[nds[row_index][:name]] += movie_gross
      #else
        #new_hash[nds[row_index][:name]] = movie_gross

    #end
    #movies_index += 1

    #end

    #row_index += 1
  #end
  #new_hash
  nds.each do |director_hash|
    director_hash[:movies].each do |movie_hash|
      if new_hash[director_hash[:name]]
        new_hash[director_hash[:name]] += movie_hash[:worldwide_gross]
      else
        new_hash[director_hash[:name]] = movie_hash[:worldwide_gross]
      end
    end
  end

  new_hash
end
