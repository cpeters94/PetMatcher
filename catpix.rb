require 'catpix'
require 'colorize'
# require './file'
# require_relative 'file'

def deliver_result(result)
  # result = cat, dog, fish 
  
    # DOG 

  if result == "dog" 

    Catpix::print_image "dog.jpeg",
      :limit_x => 1.0,
      :limit_y => 0,
      :center_x => true,
      :center_y => true,
      :bg => "white",
      :bg_fill => true
  
    `say "woof woof"`
  
    puts "You got a dog! Raise the ruff, what a good pet-tential friend...".red
    
    # FISH 
    
  elsif result == "fish"
  
    Catpix::print_image "fish.gif",
      :limit_x => 1.0,
      :limit_y => 0,
      :center_x => true,
      :center_y => true,
      :bg => "white",
      :bg_fill => true
    
    `say "splash"`
  
    puts "You got a fish! Nice work, you 'cod' not do better...".blue
  
    # CAT 
  
  elsif result == "cat"
  
    Catpix::print_image "cat.jpeg",
      :limit_x => 1.0,
      :limit_y => 0,
      :center_x => true,
      :center_y => true,
      :bg => "white",
      :bg_fill => true
    
    `say "meow"`
    
    puts "You got a cat! Purr-fect,that's a paw-sitive outcome...".green
  
  else 
    puts "Well, seems like you're a hard one to match. Perhaps a stuffed teddy bear is your best bet!"
  end 
end 
  