class User < ApplicationRecord
	has_many :images
	has_one :payment
	accepts_nested_attributes_for :payment
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
