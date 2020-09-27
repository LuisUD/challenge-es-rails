Rails.application.routes.draw do
  root 'search#index'
  get '/search', to: 'search#search'
  post '/search/filter', to: 'search#search', as: 'search_filter'
end
