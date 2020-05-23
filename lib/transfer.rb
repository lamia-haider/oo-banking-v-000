class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid? #both have to be valid data-visibility
    if sender.valid? && receiver.valid?
      true
    else false
    end
  end


#  can execute a successful transaction between two accounts (FAILED - 1)
#       each transfer can only happen once (FAILED - 2)
#       rejects a transfer if the sender doesn't have a valid account (FAILED - 3)
  def execute_transaction
    if sender.valid? == false
      self.status = "rejected"
      puts "Transaction rejected. Please check your account balance."
    end
    if self.status != "complete" && valid? == true
      sender.balance = sender.balance - amount
      receiver.balance = receiver.balance + amount
      @status = "complete"

    end

  end



end
