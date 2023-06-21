class Cart < ApplicationRecord
  belongs_to :student
  has_one :order

  has_many :cart_courses
  has_many :courses, through: :cart_courses
end
