
# Problem 3: Game Characters with Mixins

# Common Abilities Mixin
module Abilities
  def move
    puts "#{@name} moves."
  end

  def attack
    puts "#{@name} attacks!"
  end

  def defend
    puts "#{@name} defends!"
  end
end

# Unique Abilities
module Healing
  def heal
    puts "#{@name} heals!"
  end
end

module Poison
  def poison
    puts "#{@name} uses poison!"
  end
end

# Level Up Mixin
module Levelable
  def level_up
    @attack_power += 5
    @defense_power += 3
    puts "#{@name} leveled up! Attack: #{@attack_power}, Defense: #{@defense_power}"
  end
end

# Hero class
class Hero
  include Abilities
  include Healing
  include Levelable

  attr_accessor :name, :attack_power, :defense_power

  def initialize(name)
    @name = name
    @attack_power = 10
    @defense_power = 5
  end
end

# Villain class
class Villain
  include Abilities
  include Poison
  include Levelable

  attr_accessor :name, :attack_power, :defense_power

  def initialize(name)
    @name = name
    @attack_power = 12
    @defense_power = 6
  end
end

# Monster class
class Monster
  include Abilities
  include Levelable

  attr_accessor :name, :attack_power, :defense_power

  def initialize(name)
    @name = name
    @attack_power = 8
    @defense_power = 4
  end
end

# Demo
hero = Hero.new("Aragon")
villain = Villain.new("Dark Lord")
monster = Monster.new("Orc")

hero.heal
villain.poison
monster.move

hero.level_up
villain.level_up
