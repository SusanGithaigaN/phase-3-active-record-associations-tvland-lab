class Actor < ActiveRecord::Base
    #   actor has many characters
    has_many :characters
    # many characters & shows through characters
    has_many :shows, through: :characters


    # full_name
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    def list_roles
        self.characters.map do |character|
          "#{character.name} - #{character.show.name}"
        end
    end
end