n 
class BankAccount
  
  attr_accessor :status, :balance
  
    def initialize(name)
      @name = name
      @balance = 1000
      @status = "open"
    end
    
    def name
      @name
    end
    
    def deposit(addtlmoney)
      newbalance = balance + addtlmoney
      balance = newbalance
      balance
    end

    def display_balance
     puts "Your balance is $#{balance}."
    end
    
    def valid 
      if status == "open" && balance > 0 
      end
    end
    
    def close_account 
      status = "closed"
    end
  
end
