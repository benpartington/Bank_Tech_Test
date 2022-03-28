require_relative '../lib/welcome.rb'
require_relative '../lib/bank.rb'

describe 'Welcome' do
  
  before { @message = "Welcome to Ben's Bank" }
  before { @bank = Bank.new }
  before { @welcome = Welcome.new }
  let(:bank) { Bank.new(@welcome) }


  describe '#welcome_message' do
    it 'should ask user for input' do
      expect(bank.welcome_message).to eq(@message)
    end
  end

end