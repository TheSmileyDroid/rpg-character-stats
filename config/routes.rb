Rails.application.routes.draw do
  root 'characters#index'

  get "/characters", to: "characters#index"
end
