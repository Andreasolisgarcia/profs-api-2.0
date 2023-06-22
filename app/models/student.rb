class Student < User
  after_create :assign_student_role

  has_many :orders
  has_many :carts
  has_many :cart_courses, through: :carts
  has_many :courses, through: :cart_courses


  def assign_student_role
    role = Role.find_by(role: 'student')
    UserRole.create!(user: self ,role: role)
 end
end
