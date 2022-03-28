require_relative '../lib/bank.rb'

describe 'Bank' do
  before{ @bank = Bank.new } 

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
    it 'should return message with correct credit and balance when balance increased by 1000' do
      @bank.deposit(1000)
      expect(@bank.print_statement).to eq(["date || credit || debit || balance\n", "10/01/2023 || 1000 || || 1000"])
    end
  

    it 'should return message with correct credit and balance when balance increased by 2000' do
      @bank.deposit(2000)
      expect(@bank.print_statement).to eq(["date || credit || debit || balance\n", "10/01/2023 || 2000 || || 2000"])
    end

    it 'should return message with correct credit, debit and balance when balance decreased by 500' do
      @bank.deposit(1000)
      @bank.withdraw(500)
      expect(@bank.print_statement).to eq(["date || credit || debit || balance\n", "10/01/2023 || 1000 || || 1000", "10/01/2023 || || 500 || 500"])
    end
  end

end