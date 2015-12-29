if TastesBitter.configuration.routes_enabled?

  Rails.application.routes.draw do

    resources :javascript_errors, only: :create

  end

end
