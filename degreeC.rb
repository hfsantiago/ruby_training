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

class Celcius #convert to celcius
    attr_accessor :temp
  def initialize(temp)
    @temp = temp.to_i
  end

  def degree_c 
    temp*1.8 - 32
  end
                                
  def prompt(week_day)
    "#{week_day} | #{temp} degrees F | #{degree_c} desgrees C"
  end
end

class Farenheit < Celcius #convert to Farenheit
  def initialize(temp)
    super(temp)
    @temp = temp.to_i
  end

  def degree_f 
    @tempF =  @temp*1.8 + 32
  end
                                
  def prompt(week_day)
    "#{week_day} | #{temp} degrees C | #{degree_f} desgrees F"
  end
end

leave = false

until leave
    puts "Put your temperatures... :-)"
    days = gets.split(" ")
    next puts "You only puts #{days} temperatures values, puts exactly 7" if days.size < 7
    next puts "You only puts #{days} temperatures values, puts exactly 7" if days.size > 7
    
    app_log = AppLogical.new(days)
   
=begin    
    #convert_to_farenheit
    def to_far
    app_log.filled.each do |k,v| 
      far = Farenheit.new(v)
      puts far.prompt(k)
    end 
end

    #convert_to_celcius
    def to_cel
    app_log.filled.each do |k,v| 
      cel = Celcius.new(v)
      puts cel.prompt(k)
    end 
end

=end    

    puts "Do you prefer Farenheit (F) or Celcius (C) [F/C]"
    convert = gets.strip
    puts convert
    
    if convert == "F"
        app_log.filled.each do |k,v| 
          far = Farenheit.new(v)
          puts far.prompt(k)
        end 
    elsif convert == "C"
        app_log.filled.each do |k,v| 
          cel = Celcius.new(v)
          puts cel.prompt(k)
        end
    else
        next puts "Puts the correct temperature..." 
        convert = gets.split(" ")
    end
    

    # next to_far if convert == "F"
    # next to_cel if convert == "C"
    
  
    puts"------------------------------------"  

    puts " "
    puts " "
    
    puts "Continue program? (y/n)"
    answer = gets.strip
    leave = answer != "y"
end