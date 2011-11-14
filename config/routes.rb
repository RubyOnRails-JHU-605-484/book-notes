Mybooksreviewed::Application.routes.draw do
  root to: "books#index"
  resources :books do
    resources :notes
  end
  resource :session

  match '/login' => "sessions#new", as: "login"
  match '/logout' => "sessions#destroy", as: "logout"
end
