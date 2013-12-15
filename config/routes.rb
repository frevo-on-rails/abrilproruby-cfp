AbrilProRubyCfp::Application.routes.draw do
  resources :proposals, except: [:edit, :update, :destroy]

  root to: redirect('/proposals/new')
end
