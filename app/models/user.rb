class User < ApplicationRecord
  has_many :tasks_users
  has_many :tasks, through: :tasks_users
  has_many :comments
  has_many :biddings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
