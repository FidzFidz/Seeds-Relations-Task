class AttendanceSetup < ApplicationRecord
  validates :roaster , presence:true
  belongs_to :branch
end
