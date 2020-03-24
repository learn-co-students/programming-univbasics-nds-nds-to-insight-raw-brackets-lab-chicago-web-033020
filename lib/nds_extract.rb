$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

pp directors_database

def directors_totals(nds)
  
  index1 = 0
  result = {}
  
  while index1 < nds.length do
    director = nds[index1][:name]
    movies = nds[index1][:movies]
    
    index2 = 0
    total = 0
    
    while index2 < movies.length do
      total = total + movies[index2][:worldwide_gross]
      index2 += 1
    end
    
    result[director] = total
    
    index1 +=1
  end
  
  nil
  result
end
