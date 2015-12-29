Rails.application.routes.draw do

  resources :__javascript_errors, controller: "tastes_bitter/javascript_errors", only: :create

end
