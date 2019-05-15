class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true, :hourly_rate, :presence => true
  validates :hourly_rate, numericality: {only_integer: true, greater_than: 40, less_than: 200 }


end
