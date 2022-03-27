require_relative '../lib/bank.rb'

describe 'Bank' do
  before{ @bank = Bank.new } 
  before{ @message = "Please Select; 1. Deposit 2. Withdrawl 3. Statement 4.Exit:" }

  describe 'method1' do
    it 'ask user for input' do
      expect(@bank.display_message).to eq(@message)
    end
  end

end