class Computer
  @@users = {}
  time = Time.now

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files = {filename: time}
    puts "Your file has been created"
  end

  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new("Mello", 347865)