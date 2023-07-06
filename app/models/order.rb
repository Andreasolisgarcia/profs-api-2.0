class Order < ApplicationRecord
  belongs_to :student, class_name: 'User'
  belongs_to :cart
  has_many :cart_courses, through: :cart
  has_many :courses, through: :cart_courses
end
