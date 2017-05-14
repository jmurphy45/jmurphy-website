Rails.application.routes.draw do
  resources :feedbacks
  resources :skills
  resources :categories
  resources :portfolios
  get '/', to: 'home#index', as: 'home'
  resources :blogs
  resources :experiences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
