Rails.application.routes.draw do
  get "/", to: "slides#start"
  get "meme", to: "slides#meme"

  root to: "slides#start"
end
