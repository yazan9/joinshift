Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'perspectives/new'
  post 'perspectives/create'
  get 'perspectives/results'
  get 'perspectives/all'
  
  root 'perspectives#new'
end
