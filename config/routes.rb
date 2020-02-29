Rails.application.routes.draw do
  devise_for :users
  root to: 'coktails#index'
  get 'search', to: 'cocktails#search', as: :search
  resources :cocktails, except: :index do
    # Doses: new & index are in the show page. Edit & update are not allowed
    resources :doses, only: [:create]
    # Reviews: new & index are in the show page. Edit & update are not allowed
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
  # Ingredients are preloaded. Only admin can do it from the back end or Rails Console

  resources :games, only: [:index, :show] do
    resources :leaderboards, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
