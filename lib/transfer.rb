class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status

  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @transfer = amount
    @status = 'pending'
  end
end
