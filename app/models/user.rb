class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, AvatarUploader

  validates :name , presence: true , uniqueness: true

  def avatar_thumbnail
    if avatar.present?
      avatar.url
    else
      '/default-avatar.png'
    end
  end

  
end
