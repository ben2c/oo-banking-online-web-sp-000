class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status

  def initialize (amount)
    @status = 'pending'
    @transfer = amount
  end
end
