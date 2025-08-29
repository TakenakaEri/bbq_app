class Event < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations

  validates :name, presence: true
  validates :date, presence: true
  validates :location, presence: true
end
