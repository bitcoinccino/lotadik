class GamesController < ApplicationController

$the_date = Date.today
  
$site_name = "Lotadik!"

def home
  	# Greet users morning, evening, night
  @number_of_winners = "1,000,000"
  now = Time.now
  today = Date.today.to_time
  morning = today.beginning_of_day
  noon = today.noon
  five_pm = today.change( hour: 17)
  eight_pm = today.change( hour: 20)
  tomorrow = today.tomorrow

  @greeting = case now
  	when morning..noon then "Good morning, #{$site_name}"
  	when noon..five_pm then "Good afternoon, #{$site_name}"
    when five_pm..eight_pm then "Good evening, #{$site_name}"
    when eight_pm..tomorrow then "Good night, #{$site_name}" 
  end

end

def about
  @greeting = "Welcome to Lotadik!"
end

def games
end


def donate
end

def help
end

  # Big money Jackpot
def power_ball
  one_to_69 = (1..69).to_a
  one_to_26 = (1..26).to_a
  @five_numbers = one_to_69.shuffle.sample(5).sort!.join(" - ")
  @pwr_ball = one_to_26.shuffle.sample(1).join(" ")
end

def mega_millions
  one_to_75 = (1..75).to_a
  one_to_15 = (1..15).to_a
  @one_to_75 = one_to_75.shuffle.sample(5).sort!.join(" - ")
  @one_to_15 = one_to_15.shuffle.sample(1).join(" ")
end

def florida_lotto
  one_to_53 = (1..53).to_a
  @lotto_six = one_to_53.shuffle.sample(6).sort!.join(" - ")
end

def cash_for_life
  one_to_sixty = (1..60).to_a
  one_to_four = (1..4).to_a
  @one_to_sixty = one_to_sixty.shuffle.sample(5).sort!.join(" - ")
  @one_to_four = one_to_four.shuffle.sample(1).join(" ")
end


def lucky_money
  one_to_47 = (1..47).to_a
  one_to_17 = (1..17).to_a
  @one_to_47 = one_to_47.shuffle.sample(4).sort!.join(" - ")
  @one_to_17 = one_to_17.sample(1).join(" ")
end

# Mini Money
def fantazy_five
  zero_to_36 = (1..36).to_a
  @fantazy_five= zero_to_36.shuffle.sample(5).sort!.join(" - ")
end

def pick_five
  zero_to_9 = (0..9).to_a
  @pick_five = zero_to_9.shuffle.sample(5).join(" - ")
end

def pick_four
  zero_to_9 = (0..9).to_a
  @pick_four= zero_to_9.shuffle.sample(4).join(" ")
end

def pick_three
  zero_to_9 = (0..9).to_a
  @pick_three = zero_to_9.shuffle.sample(3).join(" ")
  
end

def pick_two
  zero_to_9 = (0..9).to_a
  @pick_two = zero_to_9.shuffle.sample(2).join(" ")

end


end