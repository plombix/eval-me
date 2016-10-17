Rails.application.routes.draw do
  get 'page/home'

  devise_for :users
  root "page#home"
end
