Rails.application.routes.draw do
  resources :dogs, only: [:index, :show]
  resources :employees, only: [:index]

  get '/doggos/', to: 'dogs#adoption'

  get '/dogs/:id/adopt', to: 'dogs#adopt_form', as: 'adopt_dog'
  patch '/adopt/:id', to: 'dogs#adopt'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
