class Project < ApplicationRecord
  enum status: { 'to do': 0, 'in progress': 1, 'complete': 2 }

  validates_presence_of :title, :status
end
