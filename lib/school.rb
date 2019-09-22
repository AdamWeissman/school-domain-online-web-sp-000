class School
  attr_accessor :name, :roster
  


  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(get_student_grade)
    roster[get_student_grade]
  end

  def add_student(student_name, z)
    roster[z] || roster[z] = []
    roster[z] << student_name
  end



  # this method should arrange the students in each grade by alphabetical order
  def sort
    sorted = {}
    roster.each do |k, array_of_students|
      sorted[k] = array_of_students.sort
    end
    sorted
  end
end