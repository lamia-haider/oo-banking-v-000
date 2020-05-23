class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name, balance=1000, status="open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(amount)
    self.balance = balance + amount
  end

  def display_balance
    print self.balance
  end


end
