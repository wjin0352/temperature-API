Rails.application.routes.draw do
  resources :thermometers

#   scope "/api",
#         :controller => "api",
#         :as => "api"
# end
  get '/thermometers/1.json',  to: 'thermometers#show'
  get 'api', to: 'thermometers#temp'
  # root to: 'thermometers#show'
end
