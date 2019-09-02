class Employee
  attr_reader :name, :age, :salary

  def initialize(details_hash)
    @name = details_hash[:name]
    @age = details_hash[:age]
    @salary = details_hash[:salary]
  end

end
