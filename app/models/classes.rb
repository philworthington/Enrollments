class Classes < ActiveRecord::Base
  attr_accessible :name
  has_many :enrollments
  has_many :students, through: :enrollments
end

