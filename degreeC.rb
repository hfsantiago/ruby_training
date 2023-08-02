name = gets.split(" ")

if name.length() > 7
  puts "Introduzca de nuevo el número de caracteres separados por dígitos"
end

my_hash = {
  "Mon" => name[0],
  "Tue" => name[1],
  "Wed" => name[2],
  "Thu" => name[3],
  "Fri" => name[4],
  "Sat" => name[5],
  "Sun" => name[6],
}

=begin
name.each do |num|
  my_hash.each_key { |key| key => num }
  end
=end
#puts my_hash

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

my_hash.each do |k,v| 
  cel = Celcius.new(v)
  f = cel.DegreeF 
  puts "#{k} | #{v} degrees C | #{f.round()} desgrees F"
end