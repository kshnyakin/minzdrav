class Position < ApplicationRecord
  resourcify
  validates :name, presence: true 
  validates :name, uniqueness: true
  has_many :users
end
