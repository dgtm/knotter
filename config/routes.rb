Rails.application.routes.draw do
  devise_for :professionals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'professionals#index'

end
