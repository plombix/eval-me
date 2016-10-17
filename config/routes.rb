Rails.application.routes.draw do
  resources :answers
  resources :evals do
  	resources :questions
  end
  get 'page/home'
  get 'page/evaluation'


  resources :answers 
 

  devise_for :users
  root "page#home"
end
