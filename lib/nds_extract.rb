$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result ={}
  element_index = 0
  while element_index < directors_database.length do
    movie_index = 0
    gross = 0
    while movie_index < directors_database[element_index][:movies].length do
      gross += directors_database[element_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    name = directors_database[element_index][:name]
    result[name] = gross
    element_index += 1 
  end 
  result
end
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {
#  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
 # nil
#end

