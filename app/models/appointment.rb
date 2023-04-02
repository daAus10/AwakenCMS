# app/models/appointment.rb
class Appointment < ApplicationRecord
  has_many :orderables
  accepts_nested_attributes_for :orderables

end

