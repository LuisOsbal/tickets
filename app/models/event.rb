class Event < ApplicationRecord
  has_many :commissions

  def api_params
    {
      id: id,
      name: name,
      event_date: event_date,
      number_of_tickets: number_of_tickets,
      place: place,
      pricing_by_ticket: pricing_by_ticket,
      commission: commissions.map(&:api_params)
    }
  end
end
