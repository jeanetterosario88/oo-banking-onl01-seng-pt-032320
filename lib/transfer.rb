class Transfer
  
 attr_reader :sender, :receiver, :amount, :status
  
    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = "pending"
    end
    
    def Transfer
    
    def valid?
      if self.receiver.valid? == true && self.sender.valid? == true
        return true 
      else 
        return false
      end
    end
    
    def execute_transaction
      if self.valid? && @sender.balance >= @amount && status = "pending"
        @receiver.balance = @receiver.balance + @amount
        @sender.balance = @sender.balance - @amount
        @status = "complete"
      else 
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
    end

    
    def reverse_transfer
      if @status = "complete"
        @receiver.balance = @receiver.balance - @amount
        @sender.balance = @sender.balance + @amount
        @status = "reversed"
      end
    end
        
    
    
end
