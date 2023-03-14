class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :projects, through: :comments

  validates_presence_of :username

  devise :database_authenticatable, :recoverable, :rememberable, :validatable
end
