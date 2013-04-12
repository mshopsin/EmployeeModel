class AddUniqueName < ActiveRecord::Migration
  def change
    add_index :employee_profiles, :name, :unique => true
  end
end
