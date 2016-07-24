Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/show', to: 'params#show'
  get '/guess', to: 'params#guess'
  get '/counter', to: 'params#counter'

  #url segement parameters
  get '/url_segement_parameters/:message', to: 'params#url_segement_parameters'
  get '/url_guessing_game/:number', to: 'params#url_guessing_game'

  #forms parameters
  get '/form_display_guessing_game', to: 'params#form_display_guessing_game'
  post '/form_result_guessing_game', to: 'params#form_result_guessing_game'



end
