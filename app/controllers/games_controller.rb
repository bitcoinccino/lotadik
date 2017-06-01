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
  @five_numbers = (1..69).to_a.reverse!.shuffle!.sample(5).sort!.join("-")
  @power_ball = (1..26).to_a.reverse!.shuffle!.sample(1).join(" ")
  
end

def mega_millions
  @one_to_75 = (1..75).to_a.reverse!.shuffle!.sample(5).sort!.join(" - ")
  @one_to_15 = (1..15).to_a.reverse!.shuffle!.sample(1).join(" ")
end


def florida_lotto
  @lotto_six = (1..53).to_a.reverse!.shuffle.sample(6).sort!.join("-")
end

def cash_for_life
  @one_to_sixty = (1..60).to_a.shuffle!.sample(5).sort!.join("-")
  @one_to_four = (1..4).to_a.reverse!.shuffle!.sample(1).join(" ")
end


def lucky_money
   @one_to_47 = (1..47).to_a.reverse!.shuffle!.sample(4).sort!.join("-")
   @ball = (1..17).to_a.reverse!.shuffle!.sample(1).join(" ")
end

# Mini Money
def fantazy_five
  @fanta_five = (1..36).to_a.reverse!.shuffle!.sample(5).sort!.join("-")
end


def pick_five
  @five= (0..9).to_a.reverse!.sample(5).shuffle!.join("-")
end

def pick_four
  @four = (0..9).to_a.reverse!.sample(4).shuffle!.join(" ")
end

def pick_three
  @three = (0..9).to_a.reverse!.sample(3).shuffle!.join(" ")
end

def pick_two
  @two= (0..9).to_a.reverse!.sample(2).shuffle!.join(" ")
end


end