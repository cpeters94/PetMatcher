require './animal_class.rb'
require './score_class.rb'
require './catpix.rb'


require 'catpix'
require 'colorize'



dog = Animal.new("Dog").to_hash
cat = Animal.new("Cat").to_hash
fish = Animal.new("Fish").to_hash
score = Score.new(10,0,50)
class Questioner
  def initialize
  end
 def ask(sc, questionlist, pet1, pet2, pet3)
   answer_list = {
     "q1" => "",
     "q2" => "",
     "q3" => "",
     "q4" => "",
     "q5" => ""
   }
   keys = ["q1", "q2", "q3", "q4", "q5"]
   keys.each do |key|
      system ("clear")
      puts questionlist[key]
      answer = gets.chomp
      while answer != "yes" && answer != "no" do
          puts "Please enter yes or no only!"
          answer = gets.chomp
          break
    end
    
    answer_list[key] = answer.downcase
end
    puts "your first hash is"
    puts answer_list.inspect
######################################################################
def hash_of_pet_options(pet1, pet2, pet3)
  a = [pet1, pet2, pet3]
  Hash[*a.map(&:to_a).flatten]
end
@my_hash = hash_of_pet_options(pet1, pet2, pet3)
##########################################
# @my_hash = {:dog => 0, :cat => 0, :fish => 0}
# puts "my old hash is"
# puts @my_hash
#######################################################################
# FOR CUDDLE is YES
@cuddle = false
if answer_list["q1"] == "yes"
  @cuddle = true
else
  @cuddle = false
end
     if @cuddle
        @my_hash.each_with_object({}) { |(key, value), hash|
          if key == "dog"
            @my_hash[key] = sc.add(value)
          elsif key == "cat"
            @my_hash[key] = sc.add(value)
          else
            @my_hash[key] = sc.donothing(value)
          end
        }
        puts @my_hash
      end
###############################################################
#FOR INSTAGRAM is YES
@insta = false
if answer_list["q2"] == "yes"
  @insta = true
else
  @insta = false
end
if @insta
@my_hash.each_with_object({}) { |(key, value), hash|
    @my_hash[key] = sc.add(value)}
    puts @my_hash
end
###############################################################
#For SWIM is YES
@swim = false
if answer_list["q3"] == "yes"
  @swim = true
else
  @swim = false
end
if @swim
@my_hash.each_with_object({}) { |(key, value), hash|
  if key == "fish"
    @my_hash[key] = sc.add(value+10)
  else
    @my_hash[key] = value
  end
}
puts @my_hash
end
#################################################################
#hi5 is YES
@hi5 = false
if answer_list["q4"] == "yes"
  @hi5 = true
else
  @hi5 = false
end
if @hi5
@my_hash.each_with_object({}) { |(key, value), hash|
  if key == "dog"
    @my_hash[key] = sc.add(value+10)
  else
    @my_hash[key] = value
  end
}
puts @my_hash
end
###########################################################
@allergy = false
if answer_list["q5"] == "yes"
  @allergy = true
else
  @allergy = false
end
if @allergy
@my_hash.each_with_object({}) { |(key, value), hash|
  if key == "fish"
    @my_hash[key] = sc.addmax(value)
  else
    @my_hash[key] = value
  end
}
puts @my_hash
end
##################
@total = 0
@my_hash.each do |key, value|
  @total += value
end
if @total == 0
  puts "Well, seems like you're a hard one to match. Perhaps a stuffed teddy bear is your best bet!"
elsif @total != 0
  @my_hash.each do |key, value|
    if value == @my_hash.values.max
      puts "Nice work, you can choose a #{key}."
       deliver_result(key.to_s)
    end
  end
end
########################################################################
 end
end
question_list = {
  "q1" => "Do you want to be able to cuddle your pet? 1.Yes 2.No",
  "q2" => "Do you want your pet to be instagrammable? 1. Yes 2. No",
  "q3" => "Do you want to be able to swim with your pet? 1. Yes 2. No",
  "q4" => "Do you want your pet to hi5 you? 1. Yes 2. No",
  "q5" => "Do you have fur allergies? 1. Yes 2. No"
}
my_questioner = Questioner.new
my_questioner.ask(score, question_list, dog, cat, fish)