class Dock 
  attr_reader :name,
              :max_rental_time, 
              :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    amount = boat.hours_rented * boat.price_per_hour
    {
      :card_number => @rental_log[boat].credit_card_number,
      :amount => amount
    }
  end
end
    
