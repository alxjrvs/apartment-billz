class ApartmentBills
  attr_reader :bills
  attr_reader :roommates

  def initialize(roommates)
    @roommates = roommates
    @bills = []
    @bill_amts = 0
  end

  def add_bill(name, amt)
    bills << name
    @bill_amts += amt
    return true
  end

  def each_roommate_total_owed
    @bill_amts / roommates
  end
end
