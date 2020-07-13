class User < ApplicationRecord
  # after_create :assign_default_role
  
  # присвоение роли по умолчанию
  # def assign_default_role
  #   self.add_role(:employee) if self.roles.blank?
  # end

  rolify
  # before_action :authenticate_user!
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable
  belongs_to :position
  validates :surname, :name, :position_id, :empl_date, :login, presence: true
  validates :password, presence: true, on: create
  validates :login, :email, uniqueness: true
end
