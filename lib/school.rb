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
  @roster.each do |key, value_array|
    @roster[key].sort{|a,b| a<=>b}
  end
end

end
