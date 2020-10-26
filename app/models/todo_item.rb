class TodoItem < ApplicationRecord
  default_scope { order(created_at: :desc) }

  belongs_to :user

  validates :title, presence: true
  has_many :todo_items, dependent: :destroy
  belongs_to :user
end
