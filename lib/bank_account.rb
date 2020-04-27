
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
      self.balance = self.balance + addtlmoney
    end

    def display_balance
      return "Your balance is $#{self.balance}."
    end
    
    def valid?
      if status == "open" && balance > 0 
        return true 
      else
        return false
      end
    end
    
    def close_account 
      self.status = "closed"
    end

end

