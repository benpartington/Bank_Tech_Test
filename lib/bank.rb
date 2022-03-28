class Bank
  
  attr_reader :balance

  def initialize(welcome_class = nil) #dependency injection
    @balance = 0
    @instance_of_welcome_class = welcome_class #dependency injection
    @history = []
  end

  def welcome
    @instance_of_welcome_class.welcome_message #dependency injection
  end

  def deposit(amount)
    @balance += amount
    @history << "10/01/2023 || #{@amount} || || #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    @history << "10/01/2023 || || #{amount} || #{@balance}"
  end

  def print_statement
    statement = @history.reverse  
    puts statement.prepend("date || credit || debit || balance\n")
  end
  
end