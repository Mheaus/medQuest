class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_badges
  has_many :user_objectives, through: :user_badges

  def has_done_this?(objective)
    user_objectives.where(objective: objective).any?
  end
end
