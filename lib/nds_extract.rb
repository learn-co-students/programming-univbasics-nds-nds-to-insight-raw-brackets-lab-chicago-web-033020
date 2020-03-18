$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Use loops, variables and the accessing method, [], to loop through the NDS
# and total up all.
def directors_totals(nds)
 #写了binding.pry再learn=>会导致running停在这里，这时候打nds就可以看到它的具体数据
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
#=begin
  result = {}
    director_i=0
    while director_i < nds.length do
      direct_name=nds[director_i][:name]
      result[direct_name]=0
      movie_i=0
      while movie_i < nds[director_i][:movies].length do
      #  binding.pry
        result[direct_name] += nds[director_i][:movies][movie_i][:worldwide_gross]
        movie_i += 1
      end
        director_i += 1
    end
    result   # Be sure to return the result at the end!
  end
#=end
####################################
=begin
#另一个方法
def directors_totals(nds)
director_i = 0
result = {}
while director_i < nds.length do
    movie_i = 0
    total = 0
    #binding.pry
    while movie_i < nds[director_i][:movies].length do
      total += nds[director_i][:movies][movie_i][:worldwide_gross]
      movie_i += 1
    end     #nds[director_i][:name]是上一个方法里的direct_name
   result[nds[director_i][:name]]= total
   director_i += 1
 end
 result
end
=end
