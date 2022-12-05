class PasswordManager
  #The passwords will be stored in hash
  #The keys are services
  #The values are the passwords
  #This hash will need to be stored in an instance variable
  
  def initialize
    @password_manager = {}
  end

  def valid?(password)
    return false unless password.length > 7
    required_characters = ['!', '@', '$', '%', '&']
    required_characters.map { |c| password.include?(c) }.any?
  end

  def add(service, password)
    #takes two strings as args
    #stores the new service and its password
    if valid?(password)
      @password_manager[service] = password
    end
  end

  def password_for(service)
    #takes one string, the service, as an argument
    #returns the password for that service
    @password_manager[service]
  end

  def services
    #takes no args
    #returns a list of all the services for which a password has been stored
    #does not return all the passwords
    @password_manager.keys
  end
end


# This should create an instance of password manager
password_manager = PasswordManager.new


# this should allow me to add a password
password_manager.add("Acebook", "password123")
password_manager.add("MakersBnB", "superpassword123")


# this should show me an array of all services
password_manager.services
password_manager.password_for("MakersBnB")
