class Bank
  
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def welcome_message
    "Welcome to Ben's Bank"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
  
end