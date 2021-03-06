class Vehicle < ActiveRecord::Base
  has_many :rides, dependent: :destroy
  belongs_to :driver

  validates :car_model, presence: true, length: {minimum: 2, maximum: 20}
  validates :color, presence: true, length: {minimum: 2, maximum: 20}
  validates :driver_id, presence: true
end
