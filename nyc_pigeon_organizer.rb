def nyc_pigeon_organizer(data)
  final = {}
  data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  x = final.keys
  data[0].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][0] << bird_color.to_s
        end 
      end 
    end 
  end 
  data[1].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][1] << gender.to_s
        end 
      end 
    end 
  end 
  data[2].each do |loc, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][2] << loc
        end 
      end 
    end 
  end 
  
  return final 
end 

  
