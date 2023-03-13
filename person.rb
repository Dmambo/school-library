class Person
  def initialize(age, name = 'Unknown', parent_permission = true)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    @parent_permission || is_of_age?
  end

  def validate_name
    @name = 'Unknown' if @name.nil?
  end

  def validate_age
    @age = 0 if @age.negative?
  end

  def of_age?
    @age >= 18
  end
end
