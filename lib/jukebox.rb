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

def help
  options = ['help', 'list', 'play', 'run', 'exit'] 
  options.each { |opt| puts opt}
end 

def play(songs)
  # puts "Enter a song name or number: "
  input = gets.chomp 
  if songs.include?(input)
    puts input 
    return
  elsif Integer(input.to_i) && (input.to_i - 1) < songs.length
    puts songs[(input.to_i) - 1]
    return
  end 
  puts "Invalid input, please try again"
end 

def list(songs)
  puts songs
end 

def exit_jukebox
  puts 'Goodbye'
end 