class Task < ApplicationRecord
    belongs_to :user
    has_many :tasks_users
    has_many :users, through: :tasks_users
    has_many :comments
end
