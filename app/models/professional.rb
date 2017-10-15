class Professional < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  attr_accessor :user_type

  self.inheritance_column = :type

  class << self
    def types
      [ 'wedding', 'nature', 'short film' ]
    end
  end
end
