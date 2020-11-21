class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount

  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @sender.balance < @amount && !@sender.valid?
      @status = "rejected"
      return "Transaction rejected. Please check your account balance"
    else
      @receiver.deposit(@amount)
      @sender.deposit(@amount*-1)
      @status = "complete"
    end
  end

end
