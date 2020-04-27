class Transfer
  
 attr_accessor :sender, :receiver, :amount, :status
  
    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = "pending"
    end
    
    def valid?
      if self.receiver.valid? == true && self.sender.valid? == true
        return true 
      else 
        return false
      end
    end
    
    def execute_transaction
      if @sender.balance >= @amount && status = "pending"
        @receiver.balance = @receiver.balance - @amount
        @sender.balance = @sender.balance + @amount
        @status = "complete"
      else 
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
    end

    
    def reverse_transfer
      if self.status = "complete"
        self.receiver.balance = self.receiver.balance + self.amount
        self.sender.balance = self.sender.balance - self.amount
        self.status = "reversed"
      end
    end
        
    
    
end
