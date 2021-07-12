class RemoveTeacherIdFromApp < ActiveRecord::Migration[5.2]
  def change
    remove_index :students, name: :index_students_on_teacher_id
    remove_column :students, :teacher_id, :integer
    
  end
end
