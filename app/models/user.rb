class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :answer
  before_validation :whitelisted

  def whitelisted
    unless Allowed.all.map(&:email).include? email
      errors.add :email, "#{email} is not on our invitation list"  
    end
  end

end
