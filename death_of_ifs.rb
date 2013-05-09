def process(input)
  if input == 'q'
    puts 'Goodbye'
  elsif input == 'tweet'
    puts 'tweeting'
  elsif input == 'dm'
    puts 'direct messaging'
  elsif input == 'help'
    puts 'helping'
  end
end

process 'q'
process 'tweet'
process 'dm'
process 'help'




