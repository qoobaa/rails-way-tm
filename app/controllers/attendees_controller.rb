class AttendeesController < ApplicationController
  def create
    @attendees = Attendee.last(10)
    @attendee = Attendee.new

    if @attendee.update(attendee_params)
      redirect_to slide_path("remote_form")
    end
  end

  private

  def attendee_params
    params.require(:attendee).permit(:name)
  end
end
