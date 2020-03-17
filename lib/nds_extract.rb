$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
   nds = directors_database
  result = {}
  director = 0
  while director < nds.count do
    movie = 0
    gross = 0
    while movie < nds[director][:movies].count do
      gross += nds[director][:movies][movie][:worldwide_gross]
      movie += 1
    end
    result[nds[director][:name]] = gross
    director += 1
  end
return result

end
