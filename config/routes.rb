Rails.application.routes.draw do
  resources :slides, only: [:show]
  resources :attendees, only: [:create]

  root to: "slides#show"
end
