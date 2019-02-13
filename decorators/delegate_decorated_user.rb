require 'delegate'
require_relative 'user'
class DelegateDecoratedUser < SimpleDelegator

  def full_name
    "#{first_name} #{last_name}"
  end

  def greeting
    "Hi my name is #{first_name}"
  end
end
u              = User.new('John', 'Doe')
decorated_user = DelegateDecoratedUser.new(u)
p decorated_user.full_name
p decorated_user.greeting
