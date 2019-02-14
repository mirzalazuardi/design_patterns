class BasicFileGenerator
  attr_reader :user, :file_name
  def initialize(user,file_name)
    @user      = user
    @file_name = file_name
  end

  def generate
    File.write(file_name, content)
  end
  private

  def header
    "#{'-'*3}#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}#{'-'*3}"
  end

  def body
    raise NotImplemetedError
  end

  def footer
    '-'*6
  end

  def content
    [header, body, footer].join("\n")
  end
end
