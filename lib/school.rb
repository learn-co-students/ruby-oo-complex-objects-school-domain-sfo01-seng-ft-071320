# code here!
require 'pry'

class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        #the value of each key will be an array of the student names
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, names|
            @roster[grade] = names.sort
        end
    end

end
