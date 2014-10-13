Rails.application.routes.draw do

  resources :artists

  resources :songs

  root to: redirect('/artists')

end
