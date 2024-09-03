class Room < ApplicationRecord
  belongs_to :branch
  has_and_belongs_to_many :employees
end
