Rails.application.routes.draw do

  # mount TastesBitter::Engine => "/tastes_bitter"

  root to: 'dashboard#home'

end
