class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status

  def initialize (sender, reciever, amount)
    @transfer = amount
  end
end
