class Transfer
  attr_reader(:sender, :account, :amount)
  def initialize(sender, account, amount)
    @sender = sender
    @account = account
    @amount = amount
  end
end
