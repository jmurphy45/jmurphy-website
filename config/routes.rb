Rails.application.routes.draw do

  #public
  get '/', to: 'home#index', as: 'home'
  post '/feedbacks(.:format)', to: 'feedbacks#create'
  get '/portfolios/:id(.:format)', to: 'portfolios#show', as: 'portfolio'
  get '/blogs/:id(.:format)', to: 'blogs#show', as: 'blog'
  devise_for :admins

  #admin
  authenticated :admin do

    get '/socail_links', to: 'socail_links#index', as: 'socail_links'
    post '/socail_links(.:format)', to: 'socail_links#create'
    get '/socail_links/new(.:format)', to: 'socail_links#new', as: 'new_socail_link'
    get '/socail_links/:id/edit(.:format)', to: 'socail_links#edit', as: 'edit_socail_link'
    get '/socail_links/:id(.:format)', to: 'socail_links#show', as: 'socail_link'
    delete '/socail_links/:id(.:format)', to: 'socail_links#destroy'
    patch '/socail_links/:id(.:format)', to: 'socail_links#update'
    put '/socail_links/:id(.:format)', to: 'socail_links#update'


    get '/feedbacks', to: 'feedbacks#index', as: 'feedbacks'
    get '/feedbacks/:id/edit(.:format)', to: 'feedbacks#edit', as: 'edit_feedback'
    get '/feedbacks/:id(.:format)', to: 'feedbacks#show', as: 'feedback'
    delete '/feedbacks/:id(.:format)', to: 'feedbacks#destroy'
    patch '/feedbacks/:id(.:format)', to: 'feedbacks#update'
    put '/feedbacks/:id(.:format)', to: 'feedbacks#update'



    get '/skills', to: 'skills#index', as: 'skills'
    post '/skills(.:format)', to: 'skills#create'
    get '/skills/new(.:format)', to: 'skills#new', as: 'new_skill'
    get '/skills/:id/edit(.:format)', to: 'skills#edit', as: 'edit_skill'
    get '/skills/:id(.:format)', to: 'skills#show', as: 'skill'
    delete '/skills/:id(.:format)', to: 'skills#destroy'
    patch '/skills/:id(.:format)', to: 'skills#update'
    put '/skills/:id(.:format)', to: 'skills#update'

    get '/categories', to: 'categories#index', as: 'categories'
    post '/categories(.:format)', to: 'categories#create'
    get '/categories/new(.:format)', to: 'categories#new', as: 'new_category'
    get '/categories/:id/edit(.:format)', to: 'categories#edit', as: 'edit_category'
    get '/categories/:id(.:format)', to: 'categories#show', as: 'category'
    delete '/categories/:id(.:format)', to: 'categories#destroy'
    patch '/categories/:id(.:format)', to: 'categories#update'
    put '/categories/:id(.:format)', to: 'categories#update'

    get '/portfolios', to: 'portfolios#index', as: 'portfolios'
    post '/portfolios(.:format)', to: 'portfolios#create'
    get '/portfolios/new(.:format)', to: 'portfolios#new', as: 'new_portfolio'
    get '/portfolios/:id/edit(.:format)', to: 'portfolios#edit', as: 'edit_portfolio'
    delete '/portfolios/:id(.:format)', to: 'portfolios#destroy'
    patch '/portfolios/:id(.:format)', to: 'portfolios#update'
    put '/portfolios/:id(.:format)', to: 'portfolios#update'


    get '/blogs', to: 'blogs#index', as: 'blogs'
    post '/blogs(.:format)', to: 'blogs#create'
    get '/blogs/new(.:format)', to: 'blogs#new', as: 'new_blog'
    get '/blogs/:id/edit(.:format)', to: 'blogs#edit', as: 'edit_blog'
    delete '/blogs/:id(.:format)', to: 'blogs#destroy'
    patch '/blogs/:id(.:format)', to: 'blogs#update'
    put '/blogs/:id(.:format)', to: 'blogs#update'


    get '/experiences', to: 'experiences#index', as: 'experiences'
    post '/experiences(.:format)', to: 'experiences#create'
    get '/experiences/new(.:format)', to: 'experiences#new', as: 'new_experience'
    get '/experiences/:id/edit(.:format)', to: 'experiences#edit', as: 'edit_experience'
    get '/experiences/:id(.:format)', to: 'experiences#show', as: 'experience'
    delete '/experiences/:id(.:format)', to: 'experiences#destroy'
    patch '/experiences/:id(.:format)', to: 'experiences#update'
    put '/experiences/:id(.:format)', to: 'experiences#update'
  end
  #resources :socail_links
  # resources :feedbacks
  # resources :skills
  # resources :categories
  # resources :portfolios
  # resources :blogs
  # resources :experiences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
