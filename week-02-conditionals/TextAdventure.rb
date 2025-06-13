class TextAdventure
    def self.start
      puts "Welcome to the Text Adventure Game!"
      forest(false, false)
    end
  
    def self.forest(armour, sword)
      # Display the forest description
      puts "You are in a dark forest. There is a path leading to the east."
      print_prompt
      command = get_command
  
      case command
      when "go east"
        # Move to the crossroads
        crossroads(armour, sword)
      else
        # Handle unknown command in the forest
        unknown_command("forest", armour, sword)
      end
    end
  
    def self.crossroads(armour, sword)
      # Display the crossroads description
      puts "You are at a crossroads. To the east you see the shores of a lake."
      puts "You can hear the bustling noise of a village in the south."
      puts "To the north, a magnificent castle towers over the trees of the forest."
      print_prompt
      command = get_command
  
      case command
      when "go north"
        # Move to the castle
        castle(armour, sword)
      when "go east"
        # Move to the lake
        lake(armour, sword)
      when "go south"
        # Move to the village
        village(armour, sword)
      when "go west"
        # Move back to the forest
        forest(armour, sword)
      else
        # Handle unknown command at the crossroads
        unknown_command("crossroads", armour, sword)
      end
    end
  
    def self.lake(armour, sword)
      # Display the lake description
      puts "You are at a misty lake. It is dead silent, and the water is calm."
      if !sword
        # Display sword availability message if not already owned
        puts "A mysterious hand thrusts itself up from the water, holding aloft a magnificent sword."
      end
      print_prompt
      command = get_command
  
      case command
      when "go west"
        # Move back to the crossroads
        crossroads(armour, sword)
      when "take sword"
        # Take the sword
        lake(armour, true)
      else
        # Handle unknown command at the lake
        unknown_command("lake", armour, sword)
      end
    end
  
    def self.village(armour, sword)
      # Display the village description
      puts "You are in a busy village."
      if !armour
        # Display armour availability message if not already owned
        puts "The smith has a magnificent set of armour on display, but you do not have funds for it."
        puts "Luckily, there are enough discarded pieces to form a complete set of armor that will fit you,"
        puts "and the smith appears not to care if you take it."
      end
      print_prompt
      command = get_command
  
      case command
      when "go north"
        # Move back to the crossroads
        crossroads(armour, sword)
      when "take armour"
        # Take the armour
        village(true, sword)
      else
        # Handle unknown command in the village
        unknown_command("village", armour, sword)
      end
    end
  
    def self.castle(armour, sword)
      # Display the castle description
      puts "You are in front of a grand castle. At the top of the tower, you see a unicorn jumping up and down to get your attention."
      puts "The unicorn is in distress, and clearly a prisoner who needs your help. A dragon guards the entrance of the castle."
      print_prompt
      command = get_command
  
      case command
      when "go south"
        # Move back to the crossroads
        crossroads(armour, sword)
      when "kill dragon"
        if armour && sword
          # Player wins if they have both armour and sword
          puts "Congratulations! You have slain the dragon and saved the unicorn. You win!"
          exit
        else
          # Player dies if they attempt to kill the dragon without necessary items
          puts "The dragon is too powerful. You die."
          exit
        end
      else
        # Handle unknown command at the castle
        unknown_command("castle", armour, sword)
      end
    end
  
    def self.unknown_command(location, armour, sword)
      # Display unknown command message and repeat the current location
      puts "I don't understand that."
      send("#{location.downcase}", armour, sword)
    end
  
    def self.print_prompt
      # Display the command prompt
      print "> "
    end
  
    def self.get_command
      # Read and return user input after removing newline and converting to lowercase
      gets.chomp.downcase
    end
end
  
  # Start the game
  TextAdventure.start
  