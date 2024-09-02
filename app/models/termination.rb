class Termination < ApplicationRecord
    validates :date, presence: true
    belongs_to :employee
end
