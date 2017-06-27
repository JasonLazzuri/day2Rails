Rails.application.routes.draw do
  resources :weeks do
    resources :days
  end

  resources :days, :only=>[:new, :index, :create]
end
