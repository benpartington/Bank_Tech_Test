class Bank
  
  attr_reader :balance

  def initialize(welcome_class = nil) #dependency injection
    @balance = 0
    @instance_of_welcome_class = welcome_class
    @history = ["date || credit || debit || balance\n"]
  end

  def welcome
    @instance_of_welcome_class.welcome_message #dependency injection
  end

  def deposit(amount)
    @balance += amount
    @credit = amount
    @history << "10/01/2023 || #{@credit} || || #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    @debit = amount
    @history << "10/01/2023 || || #{@debit} || #{@balance}"
  end

  def print_statement
    @history   
  end
  
end