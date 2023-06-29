class Teacher < User
  after_create :assign_teacher_role

  #teacher associations
  has_many :created_courses, class_name:"Course"
  
  def assign_teacher_role
    add_role('Teacher')
  end
end
