Rails.application.routes.draw do
  resources :offers, only: %i[index new create show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
