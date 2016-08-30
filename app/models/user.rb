class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  dragonfly_accessor :asset
  
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :assets
  belongs_to :rol
end
