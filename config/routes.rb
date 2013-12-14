AbrilProRubyCfp::Application.routes.draw do
  # resources :proposals, except: [:edit, :update, :destroy]
  scope :proposals do
    get :new, to: 'proposals#new'
    get :create, to: 'proposals#create'
    get :show, to: 'proposals#show'
  end

  root to: redirect('/proposals/new')
end
