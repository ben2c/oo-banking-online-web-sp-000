class BankAccount
  attr_accessor :name, :balance, :status


  def initialize (name)
    const @name = name
    @balance = 1000
    @status = 'open'
  end



end
