def nyc_pigeon_organizer(data)
  hash= {}
  data.each_key do |key1|
    data[key1].each_key do |key2|
      i = 0
      while data[key1][key2].length>i  do 
        array_key2 = []
        if !hash.key?(data[key1][key2][i])
          hash[data[key1][key2][i]]= {
            key1 => array_key2.push("#{key2}")
          }
        else 
          hash[data[key1][key2][i]][key1] = array_key2.push("#{key2}")
        end 
        i +=1 
      end 
    end 
  end 
  p hash 
end
