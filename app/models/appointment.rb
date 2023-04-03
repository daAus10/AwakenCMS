# app/models/appointment.rb
class Appointment < ApplicationRecord
  has_many :orderables
  accepts_nested_attributes_for :orderables
  belongs_to :employee, optional: true

  attr_accessor :time_string

  before_validation :parse_time_string

  def parse_time_string
    self.time = Time.strptime(time_string, "%I:%M%p") if time_string.present?
  end
end

