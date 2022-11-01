class PasswordManager2
  def initialize
    #Initializes three arrays, password manager being the main one, and two other arrays for checking / ease of ordering.
    @password_manager = Array.new()
    @password_array = Array.new()
    @service_array = Array.new()
  end

  def add(service, password)
    if @service_array.include? service
      return "ERROR: Service names must be unique"
    elsif @password_array.include? password
      return "ERROR: Passwords must be unique"
    else
        new_entry = {
            "service" => service,
            "password" => password,
            "added" => DateTime.now(),
          }
      @password_manager << new_entry
      @service_array << service
      @password_array << password
    end
  end

  def services
    return @service_array
  end

  def remove(service)
    deleted_pass = @password_manager.find { |h| h["service"] == service }["password"]
    @password_manager.select! { |e| e["service"] != service }
    @password_array.reject! { |e| e[deleted_pass] == deleted_pass }
    @service_array.reject! { |e| e[service] == service }
  end

  def update(service, password)
    if @password_array.include? password
      return "ERROR: Password already in use"
    else
      @password_manager.find { |h| h["service"] == service }["password"] = password
    end
  end

  def password_for(service)
    @password_manager.detect { |h| h["service"] == service }["password"]
  end

  def sort_by(string)
    if string == "service"
      return @service_array.sort
    else
      sorted_list = @password_manager.sort_by { |k| k["added"] }
      return sorted_list.map { |k| k["service"] }
    end
  end
end
