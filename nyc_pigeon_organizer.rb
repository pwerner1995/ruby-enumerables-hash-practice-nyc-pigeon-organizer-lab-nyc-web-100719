def nyc_pigeon_organizer(data)
  hash= {}
  array_key2= []
  data.each_key do |key1|
    
    data[key1].each_key do |key2|
      i = 0
       
      while data[key1][key2].length>i  do 
        name = data[key1][key2][i]
        
        if !hash.key?(name)
          p key1
          array_key2=[]
          hash[name]= {
            key1 => array_key2.push("#{key2}")
          }
        elsif !array_key2.include?("#{key2}") 
          hash[name][key1]= array_key2.push("#{key2}")
          puts key2
          
        end 
        i +=1
        array_key2=[]
      end 
    end 
  end 
  p hash 
end
