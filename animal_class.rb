require './score_class.rb'
class Animal
  def initialize(name)
    @name = name.delete(" ")
  end
  attr_accessor :name
  def to_hash
    hash = {}
    instance_variables.each {|var|
      hash[instance_variable_get(var).downcase] = 0}
    hash
  end
end