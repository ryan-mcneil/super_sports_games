 require './lib/games.rb'
 require './lib/event.rb'

puts "Welcome to Super Sports Games...uh...Wait, what year is this?"
year = gets.chomp
puts "Welcome to Super Sports Games #{year}!"
#instantiate game
game = Games.new(year)

#### next step would have been to refactor while loops into seperate methods
#### and then error checked for correct inputs from user (ints, strings, etc)

event_flag = true
ages_flag = true
# Outer while loop creates events, by first getting event name, and then ages array
while event_flag
  print "Enter the name of an event (or enter 'Done' when finished):"
  name = gets.chomp
  #if "done", trip flag and exit loop
  if name.downcase == "done"
    event_flag = false
  else
    ages = []
    #inner while loop builds array of ages
    while ages_flag
      print "Enter the age of a competitor (or enter 'Done' once you've added everybody)"
      age = gets.chomp
      #if "done", trip flag and exit loop
      if age.downcase == "done"
        ages_flag = false
      else
        #build array
        ages.push(age.to_i)
      end
    end
    # create a new event from the current iteration of while loop,
    event = Event.new(name, ages)
    #add event to game
    game.add_event(event)
    #reset flag
    ages_flag = true
  end

end

puts game.all_events_summary
