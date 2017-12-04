# require_relative "./setup"

class Scene
  def enter()
    puts "There are no scenes attached"
    exit(1)
  end
end

class Intro < Scene
    def enter()
        puts "Welcome, today you will see what it is to be training as an athlete today..."
        puts "\n"
        puts "If you would like to play press space (then click enter), or if you want to quit type 'quit'"
        puts "> "
    
        play = $stdin.gets.chomp
        
    
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
    def enter()
        # def initialize(name)
        #     name = @@name
        # end
        puts "What is your name? (first name only)"
        puts "> " 
        @@name = $stdin.gets.chomp

        return 'breakfast'
    end
end
class Breakfast < Scene
    def enter()
        puts "#{@name}, you walk downstairs, it is six in the morning. \n You can hear your mother reading the newspaper in the kitchen. You are very tired and can barely see. It is one of those mornings... \n You finally reach the kitchen table and sit down, and your mother looks at you for breakfast."
        puts "Mom: 'Hello #{@name}, how are you doing today?"
        puts "#{@name}: Hi mom"
        puts "Mom: Are you hungry?"
        puts "#{@name}: (Yes or no) > "
        
        hungry = $stdin.gets.chomp
        
        if hungry == 'yes'
            puts "Mom: Great we have a ton of food this morning!!"
            puts "You hear all of the different kinds of food your mother has to offer: Bacon and eggs, waffles, \n fruit salad, and croissants"
        puts "What would you like for breakfast? Type the food you want."
        puts "> "
        food = $stdin.gets.chomp
        #  def initialize(cal)
        #      cal = @@cal
        #  end
        # @cal = cal
        if food == "bacon and eggs" || food == "Bacon and eggs" || food == "Eggs and bacon" || food == "eggs and bacon"
            @cal = 273
            return "practice"
        elsif food == "Waffles" || food == "waffles"
            puts "Would you like Syrup? (yes or no)"
            puts ">"
            syrup = $stdin.gets.chomp
            if syrup == "yes" || syrup == "Yes"
                
                puts "Yes!"
                puts "The real question is: would you like butter? (yes or no)"
                puts ">"
                butter = $stdin.gets.chomp
                if butter == "yes" || butter == "Yes"
                    @cal = 349
                    return "practice"
                else
                    @cal = 247
                    puts "Too much cholesterol for you?"
                    return "practice"
                end
            else 
                puts "aww ok :( "
                puts "The real question is: would you like butter? (yes or no)"
                puts ">"
                butter = $stdin.gets.chomp
                if butter == "yes" || butter == "Yes"
                    @cal = 297
                    return "practice"
                else
                    @cal = 195
                    return "practice"
                end
            end
        elsif food == "fruit salad" || food == "Fruit salad"
            @cal = 124
            return "practice"
        elsif food == "croissants" || food == "Croissants"
            puts "What kind would you like regular (with butter) or a chocolate one?"
            puts "write exactly: chocolate (for a chocolate croissant) or regular (for a regular croissant)"
            puts "> "
            croissant = $stdin.gets.chomp
            if croissant == "regular"
                puts "Narrator: Great choice!!"
                @cal = 231
                return "practice"
            elsif croissant == "chocolate"
                puts "Narrator: Ohhh good choice. You have practice for a few hours..."
                @cal = 420
                return "practice"
            end
        end            
            # return 'menu'
        else 
            puts "Mom: That is a first!! I know you, #{@name}, in case you are hungry, please take this protein bar! You have to be out on the snow at 8:30 sharp because you have practice; it is a Saturday, remember?"
            return 'practice'
        end
    end
end

# class Menu < Scene
#     def enter()
#         puts "You hear all of the different kinds of food your mother has to offer: Bacon and eggs, waffles, \n fruit salad, and croissants"
#         puts "What would you like for breakfast? Type the food you want."
#         puts "> "
#         food = $stdin.gets.chomp
#         @calories = calories
#         if food == "bacon and eggs" || food == "Bacon and eggs" || food == "Eggs and bacon" || food == "eggs and bacon"
#             calories = 273
#             return "practice"
#         elsif food == "Waffles" || food == "waffles"
#             puts "Would you like Syrup? (yes or no)"
#             puts ">"
#             syrup = $stdin.gets.chomp
#             if syrup == "yes" || syrup == "Yes"
                
#                 puts "Yes!"
#                 puts "The real question is: would you like butter? (yes or no)"
#                 puts ">"
#                 butter = $stdin.gets.chomp
#                 if butter == "yes" || butter == "Yes"
#                     calories = 349
#                     return "practice"
#                 else
#                     calories = 247
#                     puts "Too much cholesterol for you?"
#                     return "practice"
#                 end
#             else 
#                 puts "aww ok :( "
#                 puts "The real question is: would you like butter? (yes or no)"
#                 puts ">"
#                 butter = $stdin.gets.chomp
#                 if butter == "yes" || butter == "Yes"
#                     calories = 297
#                     return "practice"
#                 else
#                     calories = 195
#                     return "practice"
#                 end
#             end
#         elsif food == "fruit salad" || food == "Fruit salad"
#             calories = 124
#             return "practice"
#         elsif food == "croissants" || food == "Croissants"
#             puts "What kind would you like regular (with butter) or a chocolate one?"
#             puts "write exactly: chocolate (for a chocolate croissant) or regular (for a regular croissant)"
#             puts "> "
#             croissant = $stdin.gets.chomp
#             if croissant == "regular"
#                 puts "Narrator: Great choice!!"
#                 calories = 231
#                 return "practice"
#             elsif croissant == "chocolate"
#                 puts "Narrator: Ohhh good choice. You have practice for a few hours..."
#                 calories = 420
#                 return "practice"
#             end
#         end
#     end
# end

class Practice < Scene
    def enter()
        puts "Narrator: 'You arrive at the mountain. You have difficulty putting on your skies. \n You try to musterup all of the strength you can to go to the old pine tree that is 50 ft tall. \n You look up as it towers over you and notice there is a seat lying against it's base. \n You rush over making sure you are the only one there. Starting to lay your head back, your eyes start to shut. \n You are lucky because the other students will not annoy you because they cannot see that you are asleep due to the goggles covering your eyes. \n No one knows it yet, not even yourself, but you are in a food coma."
        puts "\n \t You suddenly feel somone shaking you, and your eyes suddenly open. It is the head of the racing programme. \n You look around and notice there is no one there, no annoying kids; no coaches; no annoying tourists... it was just you. \n You look down at your watch and you noticed it was 9:30, which is one hour after you were supposed to be on the hill."
        puts "\n \n \t You get up frantically, knowing that your coach will be pissed at you. You feel agitation in your stomach you do not feel that you should stop. \n You get up and start rushing to the lift. You hop on, and you start shaking: the idea of angering your coach gets to you. \n You reach the top... "
        puts "You start the 'Jesus walk' and thinking to yourself 'I am going to die today... Nice to know you world.' Your coach comes into view."
        print "You start to feel adrenaline rushing through your veins. He begins to yell at you! \n He stops."
        puts "\n\n Do you scream back or just carry on with your day?"
        puts "For Scream write 'fight' and to continue your day write 'continue'"
        puts "\n> "
        decision = $sdtin.gets.chomp
        if decision == "continue"
            puts "He screams and condems you to hike up the mountain 5 times with your skis."
            puts "You oblidge..."
            return "hiking"
        elsif decision == "fight"
            puts "You begin to scream so much that your face turns red."
            puts "When you finish your coach looks irate. Do you apologize? (Yes or no)"
            puts "> "
            gets.chomp
            puts "It doesn't matter..."
            return "home"
        end
    end
end

class Home < Scene
    def enter()
        puts "Your Coach forces you to go home. Your mom sees you and asks what happened... you tell her and you are grounded."
        puts "You have lost the game."
        puts "Good Bye"
    end
end
class Hike < Scene
    def enter()
        puts "\n \n\tYou start hiking the air is thin, and it gets increasingly difficult as time goes on. Although you look forward \nto the time when you reach the top: it is when you can put your skis on, which you have been carrying, and ski down."
        print "\n\tOn the third time going up your stomach begins to hurt. You do not know what it is, so you continue to climb, \nbut as time goes it starts to hurt much more. \nYou try to push yourself even more, while carrying 30 pounds worth of \nequipement, because of the concept of 'NO PAIN NO GAIN...' "
        if cal == 349 || cal == 420 
            print "You realize you must vomit, so you run into the woods and puke. \nYou start to cross the mountain to tell your coach that you vomitted, but you run into the head coach. You have two options \neither tell this man that you need to leave or go tell your coach."
            puts "\n Tell now or later???"
            puts ">"
            tell = $stdin.gets.chomp
            if tell == "now"
                puts "You are going home, but it stays in the back of your mind weather or not your coach knows. It eats you up \ninside that he does not."
                return "end I"
            elsif tell == "later"
                puts "You puke again while trying to go over. The coach sends you home anyways."
                return "end I"
            end
        elsif cal == 124
            puts "You go inside to eat something, and your coach sees you. He begins to yell at you and sends you home. He explained that \n you are not to go to the race the next day..."
            return "home"
        elsif cal == 273 || cal == 231 || cal == 297 || cal == 247
            puts "You push through the pain. Turns out it was just Indigestion."
            puts "You pushed yourself and ran up the mountain a few times."
            return "end II"
        end
    end
end
class END_II < Scene
    def enter() 
        puts "You end up decreasing your time by 1.6 seconds, which is stellar. Now since you pushed yourself, you are projected to win the race tomorrow if you eat right and push yourself."
    end
end
class END_I < Scene
    def enter()
        puts "You cannot race tomorrow because your mother is afraid about your health. You miss the scouts, and you do not get recruited for Duke skiing."
    end
end


class Quit < Scene
    def enter()
        puts "YOU HAVE NOW QUIT THE GAME"
    end
end

# class Map
#   @@scenes = {
#     'intro' => Intro.new(),
#     # 'menu' => Menu,
#     'name' => Name.new(),
#     'breakfast' => Breakfast.new(),
#     'end I' => END_I,
#     'end II' => END_II,
#     'home' => Home,
#     'hiking' => Hike,
#     'practice' =>Practice,
#     'quit' => Quit.new(),
#   }
  
#   def initialize(start)
#     @start = start
#   end


#   def next_scene(scene_name)
#     val = @@scenes[scene_name]
#     return val
#   end

#   def opening_scene()
#     return next_scene(@start)
#   end
# end

# a_map = Map.new('intro')
# a_game = Engine.new(a_map)
# a_game.play()

