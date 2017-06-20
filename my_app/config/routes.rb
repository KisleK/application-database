Rails.application.routes.draw do
  get '/fortune' => 'pages#fortune'
  get '/loto' => 'pages#lottery'
  get '/count' => 'pages#counter'
end
