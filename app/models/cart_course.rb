class CartCourse < ApplicationRecord
  belongs_to :cart
  belongs_to :course
end
