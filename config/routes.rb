Rails.application.routes.draw do
  resources :slides, only: [:show]

  root to: "slides#show"
end
