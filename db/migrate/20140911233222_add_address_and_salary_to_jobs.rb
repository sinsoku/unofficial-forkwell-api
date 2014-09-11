class AddAddressAndSalaryToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :address, :string
    add_column :jobs, :min_salary, :integer
    add_column :jobs, :max_salary, :integer
  end
end
