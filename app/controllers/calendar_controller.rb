class CalendarController < ApplicationController
  before_action :authenticate_user!
  def index
    @meetings = Ticket.where(assignee_id: current_user.id)
  end
end
