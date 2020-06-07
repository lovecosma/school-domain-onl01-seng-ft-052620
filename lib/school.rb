require 'pry'
class School
attr_accessor :school_name, :roster

def initialize(school_name)
@school_name = school_name
@roster = {}
end



def add_student(name, grade)
if @roster[grade]
   @roster[grade] << name
  else
   @roster[grade] = []
   @roster[grade] << name
end
end

def grade(number)
@roster[number]
end

def sort
new_hash = {}
@roster.each do |key, value_array|
value_array.sort do |a,b|
  a<=>b
end
new_hash[key] = []
new_hash[key] = value_array 
end
new_hash
end

end
