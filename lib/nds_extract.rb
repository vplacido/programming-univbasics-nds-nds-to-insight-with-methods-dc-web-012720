$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0 
  i = 0 
  while i < director_data.length do 
    directorName = director_data[i][:name]
    moviesCount = 0 
    while moviesCount < director_data[i][directorName].length do 
      total += director_data[i][directorName][moviesCount][:worldwide_grosses]
      moviesCount += 1
    end
    i += 1 
  end
  total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
