class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    
    def full_name
        "#{first_name} #{last_name}"
        #self.first_name + " " + self.last_name (chain building)
    end

    def list_roles
        self.characters.map {|character| character.name + " - " + character.show.name}
        #instance of charac. mapping over, able to use .name method on character + is adding each thing together.
        #character.show.name is "CHAIN BUILDING"  
    end
    
    
     
end