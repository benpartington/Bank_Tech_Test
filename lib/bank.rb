class Bank
  
  attr_reader :balance

  def initialize(welcome_class = nil) #dependency injection
    @balance = 0
    @date = 10/01/2023
    @instance_of_welcome_class = welcome_class
  end

  def welcome
    @instance_of_welcome_class.welcome_message #dependency injection
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
        #set credit and debit to zero?
        #so next entry can print without them?
  end
  
end