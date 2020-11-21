require 'pry'
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
    # binding.pry
    if !@sender.valid?
      return "Transaction rejected. Please check your account balance"
    elsif @status == 'complete'
      return "Transaction was already executed"
    else
      @receiver.deposit(@amount)
      @sender.deposit(@amount*-1)
      @status = "complete"
    end
  end

  def reverse_transfer
    if @status =="complete"
      @sender.deposit(@amount)
      @receiver.deposit(@amount*-1)
      @status = 'reversed'
    end
  end
end
