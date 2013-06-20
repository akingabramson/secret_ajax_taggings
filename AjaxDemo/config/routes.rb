AjaxDemo::Application.routes.draw do
  root :to => "Users#new"

  resources :secrets
  resource :session
  resources :users do
    resources :secrets
    member do
      resource :friendship, :only => [:create, :destroy]
    end
  end
end
