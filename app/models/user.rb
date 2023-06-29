class User < ApplicationRecord
  belongs_to :adresse, optional: true
  has_many :user_roles
  has_many :roles, through: :user_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  

  def add_role(role_to_assign)
    role = Role.find_by(role: role_to_assign)
    UserRole.create!(user: self ,role: role)
  end
        
  def role_array
    self.roles.pluck(:role)
  end
        
  def has_role?(role)
    role_array.include?(role)
  end
end
