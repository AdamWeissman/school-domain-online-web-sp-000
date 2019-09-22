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
    students_sorted_by_grade_hash = {}
    roster.each do |the_key_which_is_grade, the_array_of_students|
      students_sorted_by_grade[the_key_which_is_grade] = the_array_of_students.sort
    end
    students_sorted_by_grade_hash
  end
end