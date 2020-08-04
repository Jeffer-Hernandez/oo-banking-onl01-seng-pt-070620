class BankAccount
    attr_reader :name
    attr_accessor :balance, :status

    def initialize (name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(deposit_amount)
        @balance+=deposit_amount
    end

    def display_balance
        return "Your balance is $#{self.balance}."
    end


    def valid?
        if @status == "open" && @balance>0
            TRUE
        else
            FALSE
        end
        
    end

    def close_account
        self.status = "closed"
    end


end
