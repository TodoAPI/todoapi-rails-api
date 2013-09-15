TodoAPI::Application.routes.draw do

  namespace :api do
    resources :lists
  end

end
