class User < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :events, through: :participations
  
  validates :name, presence: true

end
