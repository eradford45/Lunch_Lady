class Wallet
  attr_accessor :money, :name
  def initialize
    p 'What is your name'
    @person_name = gets.strip
    p 'How much do you have to spend'
    p 'we have no change whole dollars only'
    @money = gets.strip.to_i
    
  end
end
