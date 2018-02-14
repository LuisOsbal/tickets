class Commission < ApplicationRecord
  belongs_to :event

def api_params
    {
      id: id,
      payment_form: payment_form,
      commission_amount: commission_amount,
      commission_type: commission_type,
      event_id: event_id
    }
  end
end
