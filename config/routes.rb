Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "post_images#index"


resources :post_images, only: [:index, :show, :new, :create, :destroy] do

	resource :favorite, only: [:create, :destroy]

	resource :post_comments, only: [:create]
end

resources :users, only: [:show, :edit, :update]

end
