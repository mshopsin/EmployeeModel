class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :employee_profile_id
      t.integer :supervisor_id

      t.timestamps
    end
   
  end
end
