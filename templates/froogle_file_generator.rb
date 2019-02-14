require './templates/basic_file_generator'
class FroogleFileGenerator < BasicFileGenerator
  private

  def body
    [user.first_name, user.last_name, user.email].join('|')
  end
end

User = Struct.new(:first_name, :last_name, :email)
user = User.new('mirza', 'hermawan', 'mirza@mail.com')
f    = FroogleFileGenerator.new(user, 'mirza')
f.generate
