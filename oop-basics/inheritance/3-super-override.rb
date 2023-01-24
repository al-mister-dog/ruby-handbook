class Account
    attr_accessor :balance

    def initialize(balance)
        @balance = balance
    end

    def decrease_balance(amount)
        @balance -= amount
    end
end

class Loan < Account 
    def decrease_balance(amount)
        if amount > @balance
            super(@balance)   
        else 
            super
        end
    end
end

normal_account = Account.new(100)
loan_account = Loan.new(100)

normal_account.decrease_balance(110)
loan_account.decrease_balance(110)

puts normal_account.balance
puts loan_account.balance

