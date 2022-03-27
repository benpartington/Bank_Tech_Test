require_relative '../lib/bank.rb'

describe 'Bank' do
  before{ @bank = Bank.new } 
  before{ @message = "Welcome to Ben's Bank" }

  describe '#welcome_message' do
    it 'should ask user for input' do
      expect(@bank.welcome_message).to eq(@message)
    end
  end

  describe '#balance' do
    it 'should return the current balance' do
      expect(@bank.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'should increase value of balance by 1000' do
      @bank.deposit(1000)
      expect(@bank.balance).to eq(1000)
    end

    it 'should increase value of balance 2000' do
      @bank.deposit(2000)
      expect(@bank.balance).to eq(2000)
    end
  end

  describe '#withdraw' do
    it 'should decrease value of balance by 500' do
      @bank.deposit(1000)
      @bank.deposit(2000)
      @bank.withdraw(500)
      expect(@bank.balance).to eq(2500)
    end

    it 'should decrease value of balance by 1000' do
      @bank.deposit(1000)
      @bank.deposit(2000)
      @bank.withdraw(1000)
      expect(@bank.balance).to eq(2000)
    end
  end

  describe '#print_statement' do
    it 'should return a message with the balance' do
      @bank.deposit(1000)
      expect(@bank.print_statement).to eq(
        "date || credit || debit || balance 
        10/01/2023 || 1000.00 || || 1000.00")
    end
  end

end