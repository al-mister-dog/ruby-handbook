class Person
    def initialize(name, age)
        name = @name
        age = @age
    end

    public
    def about_me
        "My name is #{@name} and I am #{@age} years old."
    end

    private
    def bank_account
        @account_number = 12345
        "My Bank account number is #{@account_number}"
    end

end

alex = Person.new("Alex", 37)
alex.about_me
alex.bank_account