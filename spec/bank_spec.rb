require_relative '../lib/bank.rb'

describe 'Bank' do
  before{ @bank = Bank.new } 
  before{ @message = "Welcome to Ben's Bank" }

  describe 'welcome_message' do
    it 'should ask user for input' do
      expect(@bank.welcome_message).to eq(@message)
    end
  end

  describe 'balance' do
    it 'should return the current balance' do
      expect(@bank.balance).to eq(0)
    end
  end

end