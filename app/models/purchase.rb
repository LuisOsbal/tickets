class Purchase < ApplicationRecord
  belongs_to :user

  def api_params
    {
      number_of_tickets: number_of_tickets,
      commission_type: commission_type,
      total: total,
      event_id: event_id,
      user_id: user_id
    }
  end
end
