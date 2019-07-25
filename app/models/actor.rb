class Actor < ActiveRecord::Base
    #An actor should have many characters and many shows through characters.
    has_many :characters
    has_many :shows, through: :characters

    # returns the first and last name of an actor
    def full_name
        self.first_name + " " + self.last_name
    end

    # lists all of the characters that actor has alongside the show that the character is in
    def list_roles
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end
end