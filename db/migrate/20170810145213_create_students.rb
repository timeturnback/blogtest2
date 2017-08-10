class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    change_table  :students do |t|
      t.rename :class,:class_name
    end
  end
end
