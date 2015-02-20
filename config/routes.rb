Rails.application.routes.draw do
  resources :thermometers

#   scope "/api",
#         :controller => "api",
#         :as => "api"
# end

  root to: 'thermometers#index'
end
