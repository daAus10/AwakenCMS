class Employee < ApplicationRecord
  has_many :employee_roles, dependent: :destroy
  has_many :roles, through: :employee_roles
  has_many :appointments
end
