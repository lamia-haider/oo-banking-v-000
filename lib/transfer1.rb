class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if sender.valid? && receiver.valid?
      true
    else false
    end
  end

  def execute_transaction
<<<<<<< HEAD
    if @status != "complete" && self.valid? == true
=======
    if @status != "complete" && sender.valid? == true
>>>>>>> a25c0dfe9a481fb1f1c4526af14201e3cbaeff86
      receiver.balance = receiver.balance + amount
      sender.balance = sender.balance - amount
      @status = "complete"
    end
<<<<<<< HEAD
    if self.valid? == false
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == "complete"
      receiver.balance = receiver.balance - amount
      sender.balance = sender.balance + amount
      @status = "reversed"
    end
  end


=======

  end

>>>>>>> a25c0dfe9a481fb1f1c4526af14201e3cbaeff86
end
