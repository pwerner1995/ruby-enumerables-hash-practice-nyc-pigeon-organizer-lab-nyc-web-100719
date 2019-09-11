def nyc_pigeon_organizer(data)
  hash= {}
  data.each_key do |key1|
    data[key1].each_key do |key2|
      i = 0
      while data[key1][key2].length>i  do 
        if (!hash.key?(data[key1][key2][i]) && key1 = :color) || data[key1][key2].count(data[key1][key2][i])>1 
          hash[data[key1][key2][i]] = {
            :color => ["#{key2}"]
          }
        end 
        i +=1 
      end 
    end 
  end 
  p hash 
end
