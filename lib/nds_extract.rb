$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)

  
row_index = 0
new_hash = {}
while row_index < nds.length do
  inner_index = 0
  total = 0 
  binding.pry
  while inner_index < nds[row_index][:movies].length do 
    total += nds[row_index][:movies][inner_index][:worldwide_gross]
    inner_index += 1
  end
  new_hash[nds[row_index][:name]]= total 
  row_index += 1 
end 
  
new_hash 
 
end
