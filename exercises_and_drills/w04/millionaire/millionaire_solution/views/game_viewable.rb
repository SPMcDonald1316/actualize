module GameViewable
  def greeting_view
    puts "Welcome to \"Who Wants to be a Millionaire!!!\""
  end

  def user_input
    gets.chomp
  end

  def greeting_form
    contestant_info = {}

    print "Tell us your name, Contestant: "
    contestant_info[:name] = user_input
    print "And where are you from: "
    contestant_info[:hometown] = user_input

    contestant_info
  end

  def lets_play_view(info)
    puts ""
    puts "It's great to meet you, #{info[:name].capitalize}!"
    puts "I hear #{info[:hometown].capitalize} is beautiful this time of year."
    puts ""
    puts "Let's play our game."
    puts ""
  end
end