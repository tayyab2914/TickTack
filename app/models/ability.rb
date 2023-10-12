# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?
    can [:read, :update, :create, :destroy], Ticket, assigner_id: user.id
    can [:read, :update], Ticket, assignee_id: user.id
    
    can :assigned, Ticket, assignee_id: user.id
    can :users, Ticket

    cannot [:read, :update, :destroy], Ticket do |ticket|
      ticket.assigner_id != user.id && ticket.assignee_id != user.id
    end

  end
end
