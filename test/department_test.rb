require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'
require './lib/department'

class DepartmentTest < Minitest::Test

  def setup
    @customer_service = Department.new("Customer Service")
  end

  def test_it_exists
    assert_instance_of Department, @customer_service
  end

  def test_initialize
    assert_equal "Customer Service", @customer_service.name
    assert_equal [], @customer_service.employees
    assert_equal 0, @customer_service.expenses
  end

  def test_it_can_hire_employees
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})

    @customer_service.hire(bobbi)
    assert_equal [bobbi], @customer_service.employees

    @customer_service.hire(aaron)
    assert_equal [bobbi, aaron], @customer_service.employees
  end

  def test_expenses_can_be_added
    @customer_service.expense(100)
    assert_equal 100, @customer_service.expenses

    @customer_service.expense(25)
    assert_equal 125, @customer_service.expenses
  end

end
