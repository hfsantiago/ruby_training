name = gets.split(" ")

if name.length() > 7
  puts "Introduzca de nuevo el número de caracteres separados por dígitos"
end

my_hash = {
  "Mon" => nil,
  "Tue" => nil,
  "Wed" => nil,
  "Thu" => nil,
  "Fri" => nil,
  "Sat" => nil,
  "Sun" => nil,
}

name.each_with_index do |value, index|
  my_hash[my_hash.keys[index]] = value
end

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