class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.string :status
      t.date :start_date
      t.date :end_date
      t.integer :assigner_id
      t.integer :assignee_id

      t.timestamps
    end
  end
end
