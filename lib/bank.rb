class Bank
  
  attr_reader :balance

  def initialize(start_bal = 0)
    @balance = start_bal
  end

  def welcome_message
    "Welcome to Ben's Bank"
  end

  def deposit(amount)
    @balance += amount
    @credit = amount
  end

  def withdraw(amount)
    @balance -= amount
    @debit = amount
  end

  def print_statement
    "date || credit || debit || balance 
        10/01/2023 || #{@credit} || #{@debit} || #{@balance}"
  end
  
end