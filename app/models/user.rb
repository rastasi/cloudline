class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sites

  def is_normal?
    role == 'normal'
  end

  def is_premium?
    role == 'premium'
  end

  def is_admin?
    role == 'admin'
  end

end
