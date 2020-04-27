class Transfer
  
 attr_accessor :sender, :reciever, :tranfer, :status
  
    def initialize(sender, reciever, transfer)
      @sender = sender
      @reciever = reciever
      @transfer = tranfer
      @status = "pending"
    end
    
    def valid?
      if self.reciever.valid? && self.transfer.valid?
        return true 
      else 
        return false
      end
    end
    
    def execute_transaction
      if self.reciever.balance > self.transfer && status = "pending"
        self.reciever.balance = self.reciever.balance - self.transfer
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
        self.reciever.balance = self.reciever.balance + self.transfer
        self.sender.balance = self.sender.balance - self.transfer
        self.status = "reversed"
      end
    end
        
    
    
end
