Rails.application.routes.draw do
  # This part generates the routes that will be use it in the API
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :events
      resources :commissions
      resources :users
    end
  end
end
