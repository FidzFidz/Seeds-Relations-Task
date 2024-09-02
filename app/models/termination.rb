class Termination < ApplicationRecord
    validates :termination_date, presence: true
    belongs_to :employee
end
