class Enrollment < ActiveRecord::Base
  attr_accessible :enrollment_date, :project_id, :student_id
  belongs_to :classes
  belongs_to :student
end
