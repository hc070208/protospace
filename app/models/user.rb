class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :prototypes
  has_many :comments
  has_many :likes, dependent: :destroy
  validates :name, :avatar, presence: true
end
