class Transfer
 attr_accessor :sender, :reciever, :tranfer, :status
  
    def initialize(sender, reciever, transfer)
      @sender = sender
      @reciever = reciever
      @transfer = tranfer
      @status = "pending"
    end
    
    def valid?
      return true if self.reciever.valid? && self.transfer.valid?
      else
      return false
      end
    end
    
    def execute_transaction
      if self.reciever.balance > self.transfer && status = "pending"
        self.reciever.balance = self.reciever.balance - self.transfer
        self.sender.balance = self.sender.balance + self.transfer
        self.status = "complete"
      else 
        status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
    end
    
    def reverse_transfer
        self.reciever.balance = self.reciever.balance + self.transfer
        self.sender.balance = self.sender.balance - self.transfer
        self.status = "complete"
      else 
        
        return "Transaction rejected. Please check your account balance."
      end
    end
        
       
      
    
    
end



#   describe '#reverse_transfer' do
#     it "can reverse a transfer between two accounts" do
#       transfer.execute_transaction
#       expect(amanda.balance).to eq(950)
#       expect(avi.balance).to eq(1050)
#       transfer.reverse_transfer
#       expect(avi.balance).to eq(1000)
#       expect(amanda.balance).to eq(1000)
#       expect(transfer.status).to eq("reversed")
#     end

#     it "it can only reverse executed transfers" do
#       transfer.reverse_transfer
#       expect(amanda.balance).to eq(1000)
#       expect(avi.balance).to eq(1000)
#     end
#   end
# end
