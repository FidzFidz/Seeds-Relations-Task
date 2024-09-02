class Employee < ApplicationRecord
  validates :name , hire-date: , presence:true 
  validates :email , employment-number , presence:true , uniqueness:true 
  belongs_to :branch
end
