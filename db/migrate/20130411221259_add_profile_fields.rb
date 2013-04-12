class AddProfileFields < ActiveRecord::Migration
  def change
    add_column :employee_profiles, :height, :integer
    add_column :employee_profiles, :age, :integer
    add_column :employee_profiles, :favorite_food, :string
    add_column :employee_profiles, :favorite_date_week, :string
    add_column :employee_profiles, :birthdate, :date
    add_column :employee_profiles, :salary, :integer
    add_column :employee_profiles, :photo, :string
  end
end
