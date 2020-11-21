class BankAccount
  attr_accessor :name, :balance, :status


  def initialize (name)
    const cant_name = name
    @name = cant_name
    @balance = 1000
    @status = 'open'
  end



end
