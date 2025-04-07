module Abilities

    def move
        puts "#{name} moves .. "
    end
    def attack
        puts "#{name} attacks.. "
    end
    def defend
        puts "#{name} defends.. "
    end
end

module Healing

    def heal
        puts "#{name} heals.."
        @health += 5
    end
end

module Poison

    def poison(hero)
        puts "#{name} spits.."
        hero.health -= 5        
    end
end



class Hero
    include Abilities
    include Healing

    attr_accessor :name, :attack_power, :defense_power, :health

    def initialize(name)
        @name = name
        @attack_power = 10
        @defense_power = 5
        @health = 100
    
    end
end

class Villain
    include Poison

    attr_accessor :name, :attack_power, :defense_power

    def initialize(name)
        @name = name
        @attack_power = 12
        @defense_power = 6
    end
end

class Monster

    attr_accessor :name, :attack_power, :defense_power

    def initialize(name)
        @name = name
        @attack_power = 8
        defense_power = 4
    end
end

hero = Hero.new("Durai Singam")
villain = Villain.new("Prakash raj")
monster = Monster.new("Danny")

hero.move
hero.heal
puts "#{hero.name} health is #{hero.health}"
villain.poison(hero)
puts "#{hero.name} health is #{hero.health}"