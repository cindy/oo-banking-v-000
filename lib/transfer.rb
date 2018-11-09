class Transfer
  attr_reader(:sender, :receiver, :amount, :status)
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if self.valid?
      @sender.deposit(-@amount)
      @receiver.deposit(@amount)
      @amount = 0
      @status = "complete"

    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end
