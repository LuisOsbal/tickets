class Api::V1::EventsController < Api::V1::BaseController
  before_action :find_events, only: %i[index create]
  before_action :find_event, only: %i[update show destroy]

  def index
    response_success events: @events.map(&:api_params)
  end

  def show
    response_success event: @event.api_params
  end

  def create
    event = @events.build(event_params)
    if event.save
      response_created event: event.api_params
    else
      response_error message: event.errors.full_messages
    end
  end

  def update
    @event.update(event_params)
    response_success event: @event.api_params
  end

  def destroy
    @event.destroy
    response_success
  end

  private

  def event_params
    params.require(:event)
          .permit(
            :name,
            :event_date,
            :number_of_tickets,
            :place
          )
  end

  def find_events
    @events = Event.all
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
