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
  elsif Integer(input.to_i) && (input.to_i - 1) < songs.length
    puts songs[(input.to_i) - 1]
  else
    puts "Invalid input, please try again"
  end 
end 

def list(songs)
  puts songs
end 