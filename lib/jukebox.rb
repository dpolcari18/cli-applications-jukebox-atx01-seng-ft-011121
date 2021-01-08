require 'pry'
# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
  #"Hi #{name}!"
#end
 
#puts "Enter your name:"
#users_name = gets.strip
 
#puts say_hello(users_name)

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  user_selection=gets.strip
  if songs.include? (user_selection)
    puts "Playing #{user_selection}"
  elsif user_selection.to_i!=0 && user_selection.to_i<=9
    puts "Playing #{songs[user_selection.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end


def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  while true do 
    puts "Please enter a command:"
    user_command=gets.strip
    case user_command
    when "exit"
      exit_jukebox()
      break
    when "list"
      list(songs)
    when "help"
      help()
    when "play"
      play(songs)
    end
  end
end