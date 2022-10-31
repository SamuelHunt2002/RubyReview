class PasswordManager
    def initialize
        @myhash = {}
    end
    def add (service, password)
        if (password.length > 7 && password =~ /[!@$%&]+/) 
      @myhash[service] = password
        end
    end
    def password_for(service)
        return @myhash[service]
    end
    def services 
        return @myhash.keys
    end
end
