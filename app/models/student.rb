class Student < User
  after_create :assign_student_role

  #Student associations
  has_many :orders,foreign_key: "user_id"
  has_many :carts, foreign_key: "user_id"
  has_many :cart_courses, through: :carts
  has_many :enrolled_courses, class_name:"Course", through: :cart_courses


  def assign_student_role
    add_role('Student')
  end
end
