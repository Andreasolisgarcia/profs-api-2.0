class Student < User
  has_many :orders
  has_many :carts
  has_many :cart_courses, through: :carts
  has_many :courses, through: :cart_courses
end
