class Teacher < User
  after_create :assign_teacher_role

  has_many :courses

  def assign_teacher_role
     
  end

end
