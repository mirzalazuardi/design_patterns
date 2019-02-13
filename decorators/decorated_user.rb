require_relative 'user'
class DecoratedUser
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def full_name
    "#{user.first_name} #{user.last_name}"
  end
end
u              = User.new('John', 'Doe')
decorated_user = DecoratedUser.new(u)
p decorated_user.full_name
