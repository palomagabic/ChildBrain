class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = {0 => :guest, 1 => :user, 2 => :moderator, 3 => :admin}

  attr_reader :role

  def role?(role_name)
    role == role_name
  end
end
