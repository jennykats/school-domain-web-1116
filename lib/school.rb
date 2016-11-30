require 'pry'

class School

  attr_accessor :name, :roster
  attr_reader :add_student

  def initialize (name, roster ={})
    @name = name
    @roster = roster
  end

  def add_student (student_name, grade)
    if !roster.key?(grade)
      roster[grade] = [student_name] # creating array & pushing
    else
      roster[grade] << student_name
    end
  end

  def grade (grade)
    if roster.key?(grade)
      return roster[grade]
    end
  end

  def sort
    sorted_hash = roster.sort.to_h
    sorted_hash.each do |k, v|
      v.sort!
    end

  end





end




school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.roster

school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
