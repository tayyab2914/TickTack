class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :assigned_tickets, class_name: 'Ticket'
  has_many :created_tickets, class_name:'Ticket' , dependent: :destroy
end
