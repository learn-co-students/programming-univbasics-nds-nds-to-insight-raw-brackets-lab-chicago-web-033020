$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #pp nds
  result = {
  }
  counter1 = 0 
  while counter1 < nds.length do
    counter2 = 0 
    movietot = 0
    name = nds[counter1][:name]
    while counter2 < nds[counter1][:movies].length do
      movietot += nds[counter1][:movies][counter2][:worldwide_gross]
      counter2 += 1
    end
    result[name] = movietot
    counter1 += 1 
  end
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  result
end
