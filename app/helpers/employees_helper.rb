module EmployeesHelper
  
  def ages
    age_list = []
    100.times { |num| num+=1; age_list << [ num, num ] }
    age_list
  end

end
