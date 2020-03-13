$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
directors = 0
total_gross = 0
result = {}

while directors < nds.length do
  movie_index = 0
  while movie_index < nds[directors][:movies].length
  total_gross += nds[directors][:movies][movie_index][:worldwide_gross]
  movie_index +=1
  end
  name_of_director = nds[directors][:name]
  result[name_of_director] = total_gross
  directors +=1
  total_gross = 0 
end

result
end
