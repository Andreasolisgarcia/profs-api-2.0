class Course < ApplicationRecord
  belongs_to :teacher, class_name: 'User', foreign_key: "user_id"
  has_many :cart_courses
  has_many :carts, through: :cart_courses
  has_many :orders, through: :carts
end
