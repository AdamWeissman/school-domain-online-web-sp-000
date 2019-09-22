class School
  attr_accessor :name, :roster
  


  def initialize(name)
    @name = name
    @roster = {}
  end

  #def grade(student_grade)
  #  roster[student_grade]
  #end

  def add_student(student_name, z)
    roster[z] || roster[z] = []
    roster[z] << student_name
  end



  # this method should arrange the students in each grade by alphabetical order
  def sort
    sorted = {}
    roster.each do |j, students|
      sorted[j] = students.sort
    end
    sorted
  end
end