name = gets.split(" ")

class AppLogical
  attr :num, :my_hash      
  def  initialize(num)
    @num = num
  end
  
  def filled
      my_hash = {
        "Mon" => nil,
        "Tue" => nil,
        "Wed" => nil,
        "Thu" => nil,
        "Fri" => nil,
        "Sat" => nil,
        "Sun" => nil,
      }

      num.each_with_index do |value, index|
            my_hash[my_hash.keys[index]] = value
      end
      my_hash
  end
end

class Farenheit
  attr :temp       
  def  initialize(temp)
    @temp = temp.to_i
  end

  def degree_c 
    temp*1.8 - 32
  end
  
  def temp
    @temp 
  end
                                
  def prompt(week_day)
    "#{week_day} | #{temp} degrees F | #{degree_c} desgrees C"
  end
end

class Celcius
  def  initialize(temp)
    @temp = temp.to_i
  end

  def DegreeF 
    @tempF =  @temp*1.8 + 32
  end
                                
  #  def prompt
  # puts "#{@temp} degrees C | #{@tempF} desgrees F"
  #  end
end

app_log = AppLogical.new(name)

#convert_to_degree F
#app_log.filled.each do |k,v| 
#  cel = Celcius.new(v)
#  puts cel.prompt(k)
#end

puts"------------------------------------"  

#convert_to_degree C
app_log.filled.each do |k,v| 
  cel = Farenheit.new(v)
  puts cel.prompt(k)
end