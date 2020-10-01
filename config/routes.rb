Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "pages/home"

resources :authors do
    resources :comments, module: :authors
  end

resources :articles do
    resources :comments, module: :articles
  end

  resources :articles_authors
end
