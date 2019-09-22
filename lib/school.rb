class School
  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def roster=(roster)
    @roster = roster
  end
  
  def roster
    @roster
  end
  


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] || roster[grade] = []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  # this method should arrange the students in each grade by alphabetical order
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end