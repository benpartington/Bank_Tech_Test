require 'date'

class Bank
  
  attr_reader :balance

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @balance += amount
    @history << "#{Date.today.strftime('%d/%m/%Y')} || #{amount} || || #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    @history << "#{Date.today.strftime("%d/%m/%Y")} || || #{amount} || #{@balance}"
  end

  def print_statement
    statement = @history.reverse  
    puts statement.prepend("date || credit || debit || balance\n")
  end
  
end