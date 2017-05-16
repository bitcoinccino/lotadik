Rails.application.routes.draw do
  root 'games#home'
  get 'games/about'
  get 'games/games'
  get 'games/donate'
  get 'games/help'
  get 'games/power_ball'
  get 'games/mega_millions'
  get 'games/florida_lotto'
  get 'games/cash_for_life'
  get 'games/lucky_money'
  get 'games/fantazy_five'
  get 'games/pick_five'
  get 'games/pick_four'
  get 'games/pick_three'
  get 'games/pick_two'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
