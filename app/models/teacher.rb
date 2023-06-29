class Teacher < User
  after_create :assign_teacher_role

  has_many :created_courses, source: :course

  def assign_teacher_role
    add_role('Teacher')
  end
end
