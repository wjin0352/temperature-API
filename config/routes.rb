Rails.application.routes.draw do
  resources :thermometers

#   scope "/api",
#         :controller => "api",
#         :as => "api"
# end


  get 'api', to: 'thermometers#temp'
  root to: 'thermometers#temp'
end
