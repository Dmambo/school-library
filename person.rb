class Person
    def initialize(age, name: 'Unknown', parent_permission: true)
      @age = age
      @name = name
      @parent_permission = parent_permission
    end
  
    def can_use_services?
      @parent_permission || is_of_age?
    end
  
    def validate_name
      raise 'NameError: name should only contain alphabets' unless @name.match?(/\A[a-zA-Z]*\z/)
    end
  
    def validate_age
      raise 'AgeError: Invalid age' unless @age.is_a?(Integer)
    end
  
    def is_of_age?
      @age >= 18
    end
  end
  