Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # we want to be able to create a match
  # we want to be able to destroy a match
  # we want to see a list of all matches for a particular dog

  resources :dogs, only: [:create, :update, :destroy, :index, :show]

  resources :dogs do
    resources :matches, only: [:create, :destroy, :index]
  end

end
