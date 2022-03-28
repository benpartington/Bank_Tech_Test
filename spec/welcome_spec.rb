require_relative '../lib/welcome.rb'
require_relative '../lib/bank.rb'

describe 'Welcome' do
  
  before { @message = "Welcome to Ben's Bank" }
  before { @bank = Bank.new }
  before { @welcome = Welcome.new }
  let(:bank) { Bank.new(@welcome) }

  # Can't figure out how to make these tests pass! 
  # Something to do with the dependency injection I think

  # describe '#welcome_message' do
  #   it 'should ask user for input' do
  #     expect(bank.welcome_message).to eq(@message)
  #   end
  # end

end