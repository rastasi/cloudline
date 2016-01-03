class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :sites
  validates :role, inclusion: { in: USER_ROLES }
  after_initialize :default_values

  def is_normal?
    role == :normal
  end

  def is_premium?
    role == :premium
  end

  def is_admin?
    role == 'admin'
  end

  private

  def default_values
    self.role ||= :normal
  end

end
