GamingApp::Application.routes.draw do
  get "games", to: 'games#index'
  get "debug/:not_special", to: 'games#debug'
end
