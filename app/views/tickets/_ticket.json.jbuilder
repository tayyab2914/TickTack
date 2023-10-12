json.extract! ticket, :id, :title, :description, :priority, :status, :start_date, :end_date, :assigner_id, :assignee_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
