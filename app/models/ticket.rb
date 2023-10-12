class Ticket < ApplicationRecord
    validates :title, presence: true
    belongs_to :assigner, class_name: 'User'
    belongs_to :assignee, class_name: 'User', optional: true
end
