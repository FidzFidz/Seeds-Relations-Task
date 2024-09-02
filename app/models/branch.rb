class Branch < ApplicationRecord
  validates :name , presence:true 
  belongs_to :company
  has_many :employees, dependent: :destroy
  has_one :attendance_setup, dependent: destroy
end

