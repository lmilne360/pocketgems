Rails.application.routes.draw do
  root to: "pages#search"
  
  get '/search' => "pages#search"

  get '/favorite' => 'pages#favorite'

  post '/search_gems' => 'pages#search_gems'

  get '*path' => "pages#search"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
