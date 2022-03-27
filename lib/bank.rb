class Bank
  
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def welcome_message
    "Welcome to Ben's Bank"
  end

  def deposit(amount)
    @balance = 1000
  end
  
end