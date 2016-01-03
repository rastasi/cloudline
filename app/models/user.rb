class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  NORMAL_USER_MAXIMUM_SITES_COUNT = 5
  PREMIUM_USER_MAXIMUM_SITES_COUNT = 50

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :sites
  validates :role, inclusion: { in: USER_ROLES }
  after_initialize :default_values

  def is_normal?
    role == 'normal'
  end

  def is_premium?
    role == 'premium'
  end

  def is_admin?
    role == 'admin'
  end

  def maximum_sites
    return NORMAL_USER_MAXIMUM_SITES_COUNT if is_normal?
    return PREMIUM_USER_MAXIMUM_SITES_COUNT if is_premium?
    return 0 if is_admin?
  end

  def can_create_site?
    is_admin? ? true : (sites.count >= maximum_sites)
  end

  private

  def default_values
    self.role ||= :normal
  end

end
