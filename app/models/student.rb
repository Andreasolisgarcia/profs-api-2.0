class Student < User
  after_create :assign_student_role

  has_many :orders
  has_many :carts
  has_many :cart_courses, through: :carts
  has_many :enrolled_courses, through: :cart_courses, source: :course


  def assign_student_role
    add_role('Student')
  end
end
