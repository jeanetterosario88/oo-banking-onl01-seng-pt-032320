class Transfer
  
 attr_accessor :sender, :receiver, :transferamount, :status
  
    def initialize(sender, receiver, transferamount)
      @sender = sender
      @receiver = receiver
      @transferamount = transferamount
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
      if self.receiver.balance > self.transfer && status = "pending"
        self.receiver.balance = self.receiver.balance - self.transfer
        self.sender.balance = self.sender.balance + self.transfer
        self.status = "complete"
        self.status
      else 
        status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
    end
    
    def reverse_transfer
      if self.status = "complete"
        self.receiver.balance = self.receiver.balance + self.transfer
        self.sender.balance = self.sender.balance - self.transfer
        self.status = "reversed"
      end
    end
        
    
    
end
