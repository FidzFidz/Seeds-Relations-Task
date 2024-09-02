class Employee < ApplicationRecord
  validates :name , :hire_date , presence:true 
  validates :email , :employment_number , presence:true , uniqueness:true 
  belongs_to :branch
  has_many :financial_packages
  has_one :termination, dependent: :destroy
  has_and_belongs_to_many :rooms 
end
