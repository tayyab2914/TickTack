class CoreController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
  end

  def dashboard
    @new_count = Ticket.where(assignee_id: current_user, status: "New").count
    @inprogress_count = Ticket.where(assignee_id: current_user, status: "In Progress").count
    @pending_count = Ticket.where(assignee_id: current_user, status: "Pending").count
    @completed_count = Ticket.where(assignee_id: current_user, status: "Completed").count
  end
end
