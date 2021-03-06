class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar
  has_one :statistic
  has_many :roster_users
  has_many :rosters, through: :roster_users
  has_one :nation_moderator
  belongs_to :clan, optional: true
  belongs_to :nation, optional: true
end
