class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    @@all << self
  end

  def deposit(amount)
    @balance = balance + amount
  end

  def self.all
    @@all
  end

  def display_balance
    return "Your balance is $#{self.balance}."
  end

  def valid?
    if status == "open" && balance > 0
      true
    else false
    end
  end

  def close_account
    self.status = "closed"
  end

end