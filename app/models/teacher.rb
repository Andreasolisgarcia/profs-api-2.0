class Teacher < User
  after_create :assign_teacher_role

  has_many :courses

  def assign_teacher_role
     role = Role.find_by(role: 'teacher')
     UserRole.create!(user: self ,role: role)
  end
end
