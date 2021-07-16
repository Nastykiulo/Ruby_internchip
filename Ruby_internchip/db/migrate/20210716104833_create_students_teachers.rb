class CreateStudentsTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :students_teachers, id: false do |t|
      t.integer :student_id
      t.integer :teacher_id
    end
  end
end
