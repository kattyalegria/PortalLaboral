class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :images, as: :imageable
  has_many :postulacions
  has_many :oferta_laborals
  accepts_nested_attributes_for :images
end
