class FinancialPackage < ApplicationRecord
validates :from_date, presece: true, comparison: {greater_than_or_equal_to: Date.new(2023, 1, 1)}
validates :to_date, presece:true ,comparison: {greater_than_or_equal_to: :from_date}
validates :amount ,presence:true, numericality: {greater_than_or_equal_to: 200}

belongs_to :employee
end
