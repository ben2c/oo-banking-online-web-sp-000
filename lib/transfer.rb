class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status

  def initialize (sender, receiver, amount)
    @sender = sender
    @recevier = receiver
    @transfer = amount
  end
end
