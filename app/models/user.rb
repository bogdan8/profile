class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable :registerable,
  # :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable
end