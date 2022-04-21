class Character
  attr_reader :character_class
  attr_accessor :armor, :weapon, :item

  def initialize(classname)
    @character_class = classname.to_s.downcase
  end

  def first_equip
    if @character_class == "warrior"
      @armor = "heavy plate armor"
      @weapon = "great sword"
      @item = "shield"
    elsif @character_class == "rogue"
      @armor = "light leather armor"
      @weapon = "dagger"
      @item = "thieves kit"
    elsif @character_class == "wizard"
      @armor = " an enchanted robe"
      @weapon = "staff"
      @item = "spell book"
    end
  end
end

def class_choice
  puts "Choose Your Class"
  puts "type Warrior, Rogue, or Wizard"
  print "\n"
  input = gets.chomp.to_s.downcase
  if input != "warrior" && input != "rogue" && input != "wizard"
    puts "Invalid Class"
    class_choice
  else
    input
  end
end

character = Character.new(class_choice)

character.first_equip

print "\n"
puts "You chose #{character.character_class.upcase}"
puts "you get #{character.armor}, a #{character.weapon}, and a #{character.item}"




print "\n"
puts "You are at a crossroads. 
there is a forest to the NORTH, a village to the EAST,
mountains to the WEST, and a lake to the SOUTH"
print "\n"

def choose_direction
  puts "Choose a direction"
  print "\n"
  direction = gets.chomp.downcase
  print "\n"
  if direction == "north" || direction == "n"
    puts "you go north!"
  end
end

choose_direction
