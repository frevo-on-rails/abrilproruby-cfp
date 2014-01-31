AbrilProRubyCfp::Application.routes.draw do
  resources :proposals, only: :show

  root 'public#index'
end
