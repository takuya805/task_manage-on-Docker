class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :learns, dependent: :destroy
  has_many :languages, dependent: :destroy
  has_many :learn_times, dependent: :destroy
end
