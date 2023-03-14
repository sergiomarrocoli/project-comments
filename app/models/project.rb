class Project < ApplicationRecord
  # Virtual attribute used to build comment in build_comment callback
  attr_accessor :user

  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  enum status: { 'to do': 0, 'in progress': 1, 'complete': 2 }

  validates_presence_of :title, :status

  # Callbacks
  before_update :build_status_update_comment, if: -> { status_changed? }

  private

  def build_status_update_comment
    comment_body = I18n.t('project.comment.body', status: status, username: user.username)
    comments.build(user:, body: comment_body)
  end
end
