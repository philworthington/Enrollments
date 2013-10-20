class CreateColumns < ActiveRecord::Migration
  def up
   add_column :enrollments, :student_id, :integer
   add_column :enrollments, :class_id, :integer
   add_column :classes, :name, :string
   add_column :students, :name, :string
   add_column :enrollments, :enrollment_date, :datetime
  end

  def down
  end
end
