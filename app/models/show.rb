class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        actor_names = []
        actor_names << self.actors.all.pluck(:first_name).join + " " + self.actors.all.pluck(:last_name).join
    end
  
end