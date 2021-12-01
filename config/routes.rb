Rails.application.routes.draw do
  # Add your routes here
  root to: 'welcome#home'
  get '/auth/developer', :as => 'developer_auth'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
