Rails.application.routes.draw do
  root to: "pages#search"

  get '/' => "pages#search"

  get '/favorites' => 'pages#favorite'

  post '/search' => 'pages#search_gems'

  get '*path' => "pages#search"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
