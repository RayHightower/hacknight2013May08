class QuitCommand
  def match?(input)
    input == 'q'
  end

  def execute
    puts 'Goodbye'
  end
end

class TweetCommand
  def match?(input)
    input == 'tweet'
  end

  def execute
    puts 'Tweeting things NOW!!!'
  end
end

class NoActionCommand
  def match?(input)
    true
  end

  def execute
    puts 'The NoActionCommand is executing.'
  end
end

def process(input)
  quit = QuitCommand.new
  tweet = TweetCommand.new
  no_action = NoActionCommand.new

  commands = [quit, tweet, no_action]

  found_command = commands.find {|command| command.match?(input) }
  found_command.execute

end

# j = QuitCommand.new
# puts j.match?('q')
# puts j.match?('8')

process 'q'
process 'tweet'
process 'random'
process 'whatever'
process 'catchthat'

