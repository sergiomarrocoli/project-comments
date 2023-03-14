class Project < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  enum status: { 'to do': 0, 'in progress': 1, 'complete': 2 }

  validates_presence_of :title, :status
end
