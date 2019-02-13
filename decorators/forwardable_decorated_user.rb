require 'forwardable'
require_relative 'user'
class ForwardableDecoratedUser
  extend Forwardable

  def_delegators :@user, :first_name, :last_name

  def initialize(user)
    @user = user
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
u              = User.new('John', 'Doe')
decorated_user = ForwardableDecoratedUser.new(u)
p decorated_user.full_name
p decorated_user.first_name
p decorated_user.last_name
