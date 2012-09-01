# encoding: utf-8 

class User
  attr_accessor :login, :email, :name, :last_name
  attr_reader :password
  
  def initialize(login, name, last_name, password, email)
    @login = login
    @password = password
    @email = email
    @name = name
    @last_name = last_name
  end
  
  def full_name
    "#{@name} #{@last_name}"
  end
  
  def password=(pswd)
    if pswd.size >= 6
      @password = pswd
    else
      puts "Пароль #{pswd} сильно короткий!"
    end
  end
  
  def user_hash
    {
      password:  @password,
      login:     @login,
      last_name: @last_name,
      email:     @email,
      name:      @name
    } 
  end
  
end

user = User.new("nedotroga", "sergey", "krivko", "913843krdc", "kriv4ik@rambler.ru")
user.methods
user.full_name
puts user.password
user.password = "qwerty"
puts user.password
puts user.user_hash