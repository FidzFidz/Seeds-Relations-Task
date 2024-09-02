class Employee < ApplicationRecord
  validates :name , :hire-date , presence:true 
  validates :email , :employment-number , presence:true , uniqueness:true 
  belongs_to :branch
  has_many :financial_packages
  has_one :termination, dependent: :destroy
  has_and_belongs_to_many :rooms 
end
