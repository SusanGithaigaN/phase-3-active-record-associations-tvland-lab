class Character < ActiveRecord::Base
    #   return actor instance
    belongs_to :actor
    # show instance
    belongs_to :show
    # say_that_thing_you_say
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
end