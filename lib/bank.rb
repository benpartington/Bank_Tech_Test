class Bank
  
  attr_reader :balance

  def initialize(welcome_class = nil) #dependency injection
    @balance = 0
    @instance_of_welcome_class = welcome_class
    @history = { } #add dates, transactions and balance to this hash?
  end

  def history
    @history
  end

  def welcome
    @instance_of_welcome_class.welcome_message #dependency injection
  end

  def deposit(amount)
    @balance += amount
    @credit = amount
    @history[:credit] = amount # add credit transaction amount to hash
  end

  def withdraw(amount)
    @balance -= amount
    @debit = amount
    @history[:debit] = amount # add debit transaction amount to hash
  end

  def print_statement
    "date || credit || debit || balance 
        10/01/2023 || #{@credit} || #{@debit} || #{@balance}"
  end
  
end