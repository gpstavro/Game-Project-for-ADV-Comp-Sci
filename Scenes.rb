require "setup.rb"

class Intro < Scene
    enter()
        puts "Welcome, today you will see what it is to be training as an athlete today..."
        puts "\n"
        puts "If you would like to play press space, or if you want to quit type 'quit'"
        puts "> "
        
        play = $stdin.get.chomp
        
        if play == ' '
            puts "Great! Let's play!!!"
            return 'name'
        elsif play == 'quit'
            puts "Aww alright..."
            return "quit"
        else play != ' ' || play != 'quit'
            puts "error, please choose an option..."
            return 'intro'
        end
    end
end

class Name < Scene
    puts "What is your name? (first name only)"
    puts ">" 
    name = $stdin.get.chomp
    def initialize(name)
        @name = name
    end
    return 'breakfast'
end
class Breakfast < Scene
    enter()
        puts "#{@name}, you walk downstairs, it is six in the morning. \n You can hear your mother reading the newspaper in the kitchen. You are very tired and can barely see. It is one of those mornings... \n You finally reach the kitchen table and sit down, and your mother looks at you for breakfast."
        puts "Mom: 'Hello #{@name}, how are you doing today?"
        puts "#{@name}: Hi mom"
        puts "Mom: Are you hungry?"
        puts "#{@name}: (Yes or no) > "
        
        hungry = $stdin.get.chomp
        
        if hungry == 'yes'
            puts "Mom: Great we have a ton of food this morning!!"
            return 'menu'
        else 
            puts "Mom: That is a first!! I know you, #{@name}, in case you are hungry, please take this protein bar! You have to be out on the snow at 8:30 sharp because you have practice; it is a Saturday, remember?"
            return 'car'
        end
    end
end

class Menu < Scene
    enter()
        puts "You hear all of the different kinds of food your mother has to offer: Bacon, eggs, waffles, cereal, \n fruit salad, and pasteries (from the senior breakfast)"
        puts "What would you like for breakfast? Type the combination of foods you want?"
        puts "> "
        food = $stdin.get.chomp



class Quit < Scene
    enter()
        puts "YOU HAVE NOW QUIT THE GAME"
    end
end
                
