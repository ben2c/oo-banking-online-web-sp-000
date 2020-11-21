class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :transfer

  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end
end
